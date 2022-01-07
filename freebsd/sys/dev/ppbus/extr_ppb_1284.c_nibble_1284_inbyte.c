
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AUTOFEED ;
 int PPB_TIMEOUT ;
 int SELECTIN ;
 int STROBE ;
 int do_1284_wait (int ,int ,int ) ;
 int nACK ;
 int nINIT ;
 int nibble2char (char) ;
 int ppb_1284_set_error (int ,int ,int) ;
 char ppb_rstr (int ) ;
 int ppb_wctr (int ,int) ;

int
nibble_1284_inbyte(device_t bus, char *buffer)
{
 char nibble[2];
 int i, error;

 for (i = 0; i < 2; i++) {


  ppb_wctr(bus, (nINIT | AUTOFEED) & ~(STROBE | SELECTIN));




  if ((error = do_1284_wait(bus, nACK, 0))) {
   ppb_1284_set_error(bus, PPB_TIMEOUT, 9);
   goto error;
  }


  nibble[i] = ppb_rstr(bus);


  ppb_wctr(bus, nINIT & ~(AUTOFEED | STROBE | SELECTIN));


  if ((error = do_1284_wait(bus, nACK, nACK))) {
   ppb_1284_set_error(bus, PPB_TIMEOUT, 11);
   goto error;
  }
 }

 *buffer = ((nibble2char(nibble[1]) << 4) & 0xf0) |
    (nibble2char(nibble[0]) & 0x0f);

error:
 return (error);
}
