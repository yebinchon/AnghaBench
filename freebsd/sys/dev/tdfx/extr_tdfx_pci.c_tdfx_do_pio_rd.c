
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
 scalar_t__ VGA_INPUT_STATUS_1C ;
 scalar_t__ VGA_MISC_OUTPUT_READ ;
 int copyout (int *,int ,int) ;
 scalar_t__ devclass_get_softc (int ,int ) ;
 int inb (scalar_t__) ;
 int tdfx_devclass ;

__attribute__((used)) static int
tdfx_do_pio_rd(struct tdfx_pio_data *piod)
{

 u_int8_t ret_byte;
 u_int workport;
 struct tdfx_softc *tdfx_info =
  (struct tdfx_softc*)devclass_get_softc(tdfx_devclass, piod->device);


 if(((piod->port != VGA_INPUT_STATUS_1C) || (piod->port != SC_INDEX) ||
  (piod->port != SC_DATA) || (piod->port != VGA_MISC_OUTPUT_READ)) &&
  (piod->port < tdfx_info->pio0) && (piod->port > tdfx_info->pio0max))
  return -EPERM;


 if(piod->size != 1) {
  return -EINVAL;
 }


 workport = piod->port;
 ret_byte = inb(workport);
 copyout(&ret_byte, piod->value, sizeof(u_int8_t));
 return 0;
}
