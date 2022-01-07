
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct ipmi_softc {int ipmi_dev; } ;
struct ipmi_request {int ir_requestlen; scalar_t__ ir_command; scalar_t__ ir_compcode; int ir_replybuflen; int ir_replylen; scalar_t__* ir_reply; int ir_addr; scalar_t__* ir_request; } ;


 scalar_t__ IPMI_REPLY_ADDR (int ) ;
 int device_printf (int ,char*,...) ;
 int smic_read_byte (struct ipmi_softc*,scalar_t__*) ;
 int smic_read_end (struct ipmi_softc*) ;
 int smic_start_read (struct ipmi_softc*,scalar_t__*) ;
 int smic_start_write (struct ipmi_softc*,int ) ;
 int smic_write_last (struct ipmi_softc*,scalar_t__) ;
 int smic_write_next (struct ipmi_softc*,scalar_t__) ;

__attribute__((used)) static int
smic_polled_request(struct ipmi_softc *sc, struct ipmi_request *req)
{
 u_char *cp, data;
 int i, state;


 if (!smic_start_write(sc, req->ir_addr))
  return (0);





 if (req->ir_requestlen == 0) {

  if (!smic_write_last(sc, req->ir_command))
   return (0);




 } else {

  if (!smic_write_next(sc, req->ir_command))
   return (0);






  cp = req->ir_request;
  for (i = 0; i < req->ir_requestlen - 1; i++) {
   if (!smic_write_next(sc, *cp++))
    return (0);




  }
  if (!smic_write_last(sc, *cp))
   return (0);




 }


 if (smic_start_read(sc, &data) != 1)
  return (0);



 if (data != IPMI_REPLY_ADDR(req->ir_addr)) {
  device_printf(sc->ipmi_dev, "SMIC: Reply address mismatch\n");
  return (0);
 }


 if (smic_read_byte(sc, &data) != 1)
  return (0);



 if (data != req->ir_command) {
  device_printf(sc->ipmi_dev, "SMIC: Command mismatch\n");
  return (0);
 }


 state = smic_read_byte(sc, &req->ir_compcode);
 if (state == 0)
  return (0);






 i = 0;
 while (state == 1) {
  state = smic_read_byte(sc, &data);
  if (state == 0)
   return (0);
  if (i < req->ir_replybuflen) {
   req->ir_reply[i] = data;







  }
  i++;
 }


 if (!smic_read_end(sc))
  return (0);
 req->ir_replylen = i;




 if (req->ir_replybuflen < i && req->ir_replybuflen != 0)

  device_printf(sc->ipmi_dev,
      "SMIC: Read short: %zd buffer, %d actual\n",
      req->ir_replybuflen, i);
 return (1);
}
