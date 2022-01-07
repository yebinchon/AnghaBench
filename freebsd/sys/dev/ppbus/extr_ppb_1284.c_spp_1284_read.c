
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EINVAL ;




 int const PPB_REVERSE_TRANSFER ;
 int byte_1284_inbyte (int ,char*) ;
 int nFAULT ;
 int nibble_1284_inbyte (int ,char*) ;
 int ppb_1284_get_state (int ) ;
 int ppb_1284_negociate (int ,int,int ) ;
 int ppb_1284_set_state (int ,int const) ;
 int ppb_1284_terminate (int ) ;
 int ppb_rstr (int ) ;
 int printf (char*) ;

int
spp_1284_read(device_t bus, int mode, char *buffer, int max, int *read)
{
 int error = 0, len = 0;
 int terminate_after_transfer = 1;
 int state;

 *read = len = 0;

 state = ppb_1284_get_state(bus);

 switch (state) {
 case 130:
  if ((error = ppb_1284_negociate(bus, mode, 0)))
   return (error);
  break;

 case 128:
  terminate_after_transfer = 0;
  break;

 default:
  ppb_1284_terminate(bus);
  if ((error = ppb_1284_negociate(bus, mode, 0)))
   return (error);
  break;
 }

 while ((len < max) && !(ppb_rstr(bus) & (nFAULT))) {

  ppb_1284_set_state(bus, PPB_REVERSE_TRANSFER);





  switch (mode) {
  case 129:

   if (nibble_1284_inbyte(bus, buffer+len))
    goto end_while;
   break;
  case 131:
   if (byte_1284_inbyte(bus, buffer+len))
    goto end_while;
   break;
  default:
   error = EINVAL;
   goto end_while;
  }
  len ++;
 }
end_while:

 if (!error)
  ppb_1284_set_state(bus, 128);

 *read = len;

 if (terminate_after_transfer || error)
  ppb_1284_terminate(bus);

 return (error);
}
