
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ipmi_softc {int ipmi_ssif_smbus_address; int ipmi_ssif_smbus; int ipmi_dev; } ;
struct ipmi_request {int ir_addr; int ir_command; scalar_t__ ir_requestlen; int* ir_request; int ir_compcode; int* ir_reply; size_t ir_replybuflen; size_t ir_replylen; } ;
typedef int device_t ;


 int EBUSY ;
 int ENXIO ;
 int IPMI_REPLY_ADDR (int) ;
 int SMBUS_DATA_SIZE ;
 int SMBUS_READ_CONT ;
 int SMBUS_READ_START ;
 int SMBUS_WRITE_CONT ;
 int SMBUS_WRITE_SINGLE ;
 int SMBUS_WRITE_START ;
 int SMB_WAIT ;
 int bcopy (int*,int*,int) ;
 int device_printf (char*,...) ;
 int dump_buffer (int ,char*,...) ;
 int hz ;
 int min (size_t,int) ;
 int pause (char*,int) ;
 int printf (char*,int) ;
 int smbus_bread (int ,int ,int ,int*,int*) ;
 int smbus_bwrite (int ,int ,int ,int,...) ;
 int smbus_error (int ) ;
 int smbus_release_bus (int ,int ) ;
 scalar_t__ smbus_request_bus (int ,int ,int ) ;

__attribute__((used)) static int
ssif_polled_request(struct ipmi_softc *sc, struct ipmi_request *req)
{
 u_char ssif_buf[SMBUS_DATA_SIZE];
 device_t dev = sc->ipmi_dev;
 device_t smbus = sc->ipmi_ssif_smbus;
 u_char *cp, block, count, offset;
 size_t len;
 int error;


 if (smbus_request_bus(smbus, dev, SMB_WAIT) != 0)
  return (0);





 ssif_buf[0] = req->ir_addr;
 ssif_buf[1] = req->ir_command;
 if (req->ir_requestlen > 0)
  bcopy(req->ir_request, &ssif_buf[2],
      min(req->ir_requestlen, SMBUS_DATA_SIZE - 2));


 if (req->ir_requestlen <= 30) {




  error = smbus_error(smbus_bwrite(smbus,
   sc->ipmi_ssif_smbus_address, SMBUS_WRITE_SINGLE,
   req->ir_requestlen + 2, ssif_buf));
  if (error) {




   goto fail;
  }
 } else {




  error = smbus_error(smbus_bwrite(smbus,
   sc->ipmi_ssif_smbus_address, SMBUS_WRITE_START,
   SMBUS_DATA_SIZE, ssif_buf));
  if (error) {




   goto fail;
  }

  len = req->ir_requestlen - (SMBUS_DATA_SIZE - 2);
  cp = req->ir_request + (SMBUS_DATA_SIZE - 2);
  while (len > 0) {




   error = smbus_error(smbus_bwrite(smbus,
       sc->ipmi_ssif_smbus_address, SMBUS_WRITE_CONT,
       min(len, SMBUS_DATA_SIZE), cp));
   if (error) {




    goto fail;
   }
   cp += SMBUS_DATA_SIZE;
   len -= SMBUS_DATA_SIZE;
  }
  if (len == 0) {
   char c = 0;




   error = smbus_error(smbus_bwrite(smbus,
    sc->ipmi_ssif_smbus_address, SMBUS_WRITE_CONT,
    1, &c));
   if (error) {




    goto fail;
   }
  }
 }


 smbus_release_bus(smbus, dev);


 pause("ssifwt", hz / 10);


read_start:
 if (smbus_request_bus(smbus, dev, SMB_WAIT) != 0)
  return (0);
 count = SMBUS_DATA_SIZE;
 error = smbus_error(smbus_bread(smbus,
     sc->ipmi_ssif_smbus_address, SMBUS_READ_START, &count, ssif_buf));
 if (error == ENXIO || error == EBUSY) {
  smbus_release_bus(smbus, dev);




  pause("ssifwt", hz / 100);
  goto read_start;
 }
 if (error) {



  goto fail;
 }
 if (count == SMBUS_DATA_SIZE && ssif_buf[0] == 0 && ssif_buf[1] == 1)
  offset = 2;
 else
  offset = 0;


 if (count < 3) {
  device_printf(dev, "SSIF: Short reply packet\n");
  goto fail;
 }


 if (ssif_buf[offset] != IPMI_REPLY_ADDR(req->ir_addr)) {
  device_printf(dev, "SSIF: Reply address mismatch\n");
  goto fail;
 }


 if (ssif_buf[offset + 1] != req->ir_command) {
  device_printf(dev, "SMIC: Command mismatch\n");
  goto fail;
 }


 req->ir_compcode = ssif_buf[offset + 2];


 if (offset == 0) {



  len = count - 3;
  bcopy(&ssif_buf[3], req->ir_reply,
      min(req->ir_replybuflen, len));
  goto done;
 }
 bcopy(&ssif_buf[5], req->ir_reply, min(req->ir_replybuflen, count - 5));
 len = count - 5;
 block = 1;

 for (;;) {

  count = SMBUS_DATA_SIZE;
  error = smbus_error(smbus_bread(smbus,
      sc->ipmi_ssif_smbus_address, SMBUS_READ_CONT, &count,
      ssif_buf));
  if (error) {



   goto fail;
  }





  if (ssif_buf[0] != 0xff && ssif_buf[0] != block) {
   device_printf(dev, "SSIF: Read wrong block %d %d\n",
       ssif_buf[0], block);
   goto fail;
  }
  if (ssif_buf[0] != 0xff && count < SMBUS_DATA_SIZE) {
   device_printf(dev,
       "SSIF: Read short middle block, length %d\n",
       count);
   goto fail;
  }






  if (len < req->ir_replybuflen)
   bcopy(&ssif_buf[1], &req->ir_reply[len],
       min(req->ir_replybuflen - len, count - 1));
  len += count - 1;


  if (ssif_buf[0] != 0xff)
   break;
  block++;
 }

done:

 req->ir_replylen = len;
 smbus_release_bus(smbus, dev);
 return (1);

fail:
 smbus_release_bus(smbus, dev);
 return (0);
}
