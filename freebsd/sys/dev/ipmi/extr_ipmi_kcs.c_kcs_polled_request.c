
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ipmi_softc {int ipmi_dev; } ;
struct ipmi_request {int ir_addr; int ir_requestlen; int ir_command; int* ir_request; int ir_compcode; int ir_replybuflen; int* ir_reply; int ir_replylen; } ;


 int IPMI_IO_LOCK (struct ipmi_softc*) ;
 int IPMI_IO_UNLOCK (struct ipmi_softc*) ;
 int IPMI_REPLY_ADDR (int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int kcs_error (struct ipmi_softc*) ;
 int kcs_read_byte (struct ipmi_softc*,int*) ;
 int kcs_start_write (struct ipmi_softc*) ;
 int kcs_write_byte (struct ipmi_softc*,int) ;
 int kcs_write_last_byte (struct ipmi_softc*,int) ;

__attribute__((used)) static int
kcs_polled_request(struct ipmi_softc *sc, struct ipmi_request *req)
{
 u_char *cp, data;
 int i, state;

 IPMI_IO_LOCK(sc);


 if (!kcs_start_write(sc)) {
  device_printf(sc->ipmi_dev, "KCS: Failed to start write\n");
  goto fail;
 }




 if (!kcs_write_byte(sc, req->ir_addr)) {
  device_printf(sc->ipmi_dev, "KCS: Failed to write address\n");
  goto fail;
 }




 if (req->ir_requestlen == 0) {
  if (!kcs_write_last_byte(sc, req->ir_command)) {
   device_printf(sc->ipmi_dev,
       "KCS: Failed to write command\n");
   goto fail;
  }




 } else {
  if (!kcs_write_byte(sc, req->ir_command)) {
   device_printf(sc->ipmi_dev,
       "KCS: Failed to write command\n");
   goto fail;
  }





  cp = req->ir_request;
  for (i = 0; i < req->ir_requestlen - 1; i++) {
   if (!kcs_write_byte(sc, *cp++)) {
    device_printf(sc->ipmi_dev,
        "KCS: Failed to write data byte %d\n",
        i + 1);
    goto fail;
   }




  }

  if (!kcs_write_last_byte(sc, *cp)) {
   device_printf(sc->ipmi_dev,
       "KCS: Failed to write last dta byte\n");
   goto fail;
  }




 }


 if (kcs_read_byte(sc, &data) != 1) {
  device_printf(sc->ipmi_dev, "KCS: Failed to read address\n");
  goto fail;
 }



 if (data != IPMI_REPLY_ADDR(req->ir_addr)) {
  device_printf(sc->ipmi_dev, "KCS: Reply address mismatch\n");
  goto fail;
 }


 if (kcs_read_byte(sc, &data) != 1) {
  device_printf(sc->ipmi_dev, "KCS: Failed to read command\n");
  goto fail;
 }



 if (data != req->ir_command) {
  device_printf(sc->ipmi_dev, "KCS: Command mismatch\n");
  goto fail;
 }


 if (kcs_read_byte(sc, &req->ir_compcode) != 1) {
  if (bootverbose) {
   device_printf(sc->ipmi_dev,
       "KCS: Failed to read completion code\n");
  }
  goto fail;
 }






 i = 0;
 for (;;) {
  state = kcs_read_byte(sc, &data);
  if (state == 0) {
   device_printf(sc->ipmi_dev,
       "KCS: Read failed on byte %d\n", i + 1);
   goto fail;
  }
  if (state == 2)
   break;
  if (i < req->ir_replybuflen) {
   req->ir_reply[i] = data;







  }
  i++;
 }
 IPMI_IO_UNLOCK(sc);
 req->ir_replylen = i;




 if (req->ir_replybuflen < i && req->ir_replybuflen != 0)

  device_printf(sc->ipmi_dev,
      "KCS: Read short: %zd buffer, %d actual\n",
      req->ir_replybuflen, i);
 return (1);
fail:
 kcs_error(sc);
 IPMI_IO_UNLOCK(sc);
 return (0);
}
