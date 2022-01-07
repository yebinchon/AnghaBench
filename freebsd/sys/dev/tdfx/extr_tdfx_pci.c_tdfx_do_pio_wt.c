
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int ;
struct tdfx_softc {scalar_t__ pio0; scalar_t__ pio0max; } ;
struct tdfx_pio_data {scalar_t__ port; int size; int value; int device; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ SC_DATA ;
 scalar_t__ SC_INDEX ;
 scalar_t__ VGA_MISC_OUTPUT_READ ;
 int copyin (int ,int *,int) ;
 scalar_t__ devclass_get_softc (int ,int ) ;
 int outb (scalar_t__,int ) ;
 int tdfx_devclass ;

__attribute__((used)) static int
tdfx_do_pio_wt(struct tdfx_pio_data *piod)
{

 u_int8_t ret_byte;
 u_int workport;
 struct tdfx_softc *tdfx_info = (struct
   tdfx_softc*)devclass_get_softc(tdfx_devclass, piod->device);


 if(((piod->port != SC_INDEX) && (piod->port != SC_DATA) &&
  (piod->port != VGA_MISC_OUTPUT_READ)) &&
  (piod->port < tdfx_info->pio0) && (piod->port > tdfx_info->pio0max))
  return -EPERM;


 if(piod->size != 1) {
  return -EINVAL;
 }


 copyin(piod->value, &ret_byte, sizeof(u_int8_t));
 workport = piod->port;
 outb(workport, ret_byte);
 return 0;
}
