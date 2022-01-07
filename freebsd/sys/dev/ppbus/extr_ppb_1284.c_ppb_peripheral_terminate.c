
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AUTOFEED ;
 int DELAY (int) ;
 int PPB_COMPATIBLE ;
 int PPB_FORWARD_IDLE ;
 int PPB_PERIPHERAL_TERMINATION ;
 int PPB_TIMEOUT ;
 int SELECT ;
 int SELECTIN ;
 int STROBE ;
 int do_peripheral_wait (int ,int,int) ;
 int nBUSY ;
 int nINIT ;
 int ppb_1284_set_error (int ,int ,int) ;
 int ppb_1284_set_state (int ,int ) ;
 int ppb_set_mode (int ,int ) ;
 int ppb_wctr (int ,int) ;
 int printf (char*) ;

int
ppb_peripheral_terminate(device_t bus, int how)
{
 int error = 0;





 ppb_1284_set_state(bus, PPB_PERIPHERAL_TERMINATION);


 if ((error = do_peripheral_wait(bus, SELECT | nBUSY, 0))) {
  ppb_1284_set_error(bus, PPB_TIMEOUT, 22);
  goto error;
 }


 ppb_wctr(bus, (nINIT | STROBE) & ~(AUTOFEED | SELECTIN));


 if ((error = do_peripheral_wait(bus, nBUSY, nBUSY))) {
  ppb_1284_set_error(bus, PPB_TIMEOUT, 25);
  goto error;
 }


 ppb_wctr(bus, (SELECTIN | nINIT | STROBE) & ~(AUTOFEED));
 DELAY(1);

 ppb_wctr(bus, (SELECTIN | nINIT) & ~(STROBE | AUTOFEED));


 if ((error = do_peripheral_wait(bus, nBUSY, 0))) {
  ppb_1284_set_error(bus, PPB_TIMEOUT, 28);
  goto error;
 }

error:
 ppb_set_mode(bus, PPB_COMPATIBLE);
 ppb_1284_set_state(bus, PPB_FORWARD_IDLE);

 return (0);
}
