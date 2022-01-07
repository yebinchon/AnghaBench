
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AUTOFEED ;
 int DELAY (int) ;
 int PPB_COMPATIBLE ;
 int PPB_FORWARD_IDLE ;
 int PPB_TERMINATION ;
 int PPB_TIMEOUT ;
 int SELECTIN ;
 int STROBE ;
 scalar_t__ do_1284_wait (int ,int,int) ;
 int nACK ;
 int nBUSY ;
 int nFAULT ;
 int nINIT ;
 int ppb_1284_set_error (int ,int ,int) ;
 int ppb_1284_set_state (int ,int ) ;
 int ppb_set_mode (int ,int ) ;
 int ppb_wctr (int ,int) ;
 int printf (char*) ;

int
ppb_1284_terminate(device_t bus)
{







 ppb_1284_set_state(bus, PPB_TERMINATION);
 ppb_wctr(bus, (nINIT | SELECTIN) & ~(STROBE | AUTOFEED));


 if (do_1284_wait(bus, nACK | nBUSY | nFAULT, nFAULT)) {
  ppb_1284_set_error(bus, PPB_TIMEOUT, 24);
  goto error;
 }


 ppb_wctr(bus, (nINIT | SELECTIN | AUTOFEED) & ~STROBE);




 if (do_1284_wait(bus, nACK, nACK)) {
  ppb_1284_set_error(bus, PPB_TIMEOUT, 27);
 }


 ppb_wctr(bus, (nINIT | SELECTIN) & ~(STROBE | AUTOFEED));

error:

 ppb_set_mode(bus, PPB_COMPATIBLE);
 ppb_1284_set_state(bus, PPB_FORWARD_IDLE);

 return (0);
}
