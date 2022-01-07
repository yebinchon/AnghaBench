
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EWOULDBLOCK ;
 int PPB_FOREVER ;
 int PPB_INTR ;
 int PPB_PERIPHERAL_IDLE ;
 int PPB_PERIPHERAL_TRANSFER ;
 int byte_peripheral_outbyte (int ,char*,int) ;
 int nBUSY ;
 char nINIT ;
 int ppb_1284_set_state (int ,int ) ;
 int ppb_poll_bus (int ,int ,int ,int ,int ) ;
 char ppb_rctr (int ) ;
 int ppb_wctr (int ,char) ;
 int printf (char*) ;

int
byte_peripheral_write(device_t bus, char *buffer, int len, int *sent)
{
 int error = 0, i;
 char r;

 ppb_1284_set_state(bus, PPB_PERIPHERAL_TRANSFER);




 for (i=0; i<len; i++) {



  r = ppb_rctr(bus);
  ppb_wctr(bus, r & ~nINIT);





  error = ppb_poll_bus(bus, PPB_FOREVER, nBUSY, nBUSY,
     PPB_INTR);

  if (error && error != EWOULDBLOCK)
   goto error;




  if ((error = byte_peripheral_outbyte(bus, buffer+i, (i == len-1))))
   goto error;
 }
error:
 if (!error)
  ppb_1284_set_state(bus, PPB_PERIPHERAL_IDLE);

 *sent = i;
 return (error);
}
