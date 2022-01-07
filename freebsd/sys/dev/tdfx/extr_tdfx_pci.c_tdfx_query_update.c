
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_int ;
struct tdfx_softc {int dev; } ;
struct tdfx_pio_data {int device; int port; int size; int value; } ;


 int EINVAL ;
 int ENXIO ;





 int copyin (int ,int*,int) ;
 scalar_t__ devclass_get_softc (int ,int) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;
 int printf (char*) ;
 int tdfx_count ;
 int tdfx_devclass ;

__attribute__((used)) static int
tdfx_query_update(u_int cmd, struct tdfx_pio_data *piod)
{


 u_int8_t ret_byte;
 u_int16_t ret_word;
 u_int32_t ret_dword;


 u_int32_t retval, preval, mask;
 struct tdfx_softc* tdfx_info = ((void*)0);


 if((piod == ((void*)0)) || (piod->device >= (tdfx_count &
     0xf))) {



  return -EINVAL;
 }

 tdfx_info = (struct tdfx_softc*)devclass_get_softc(tdfx_devclass,
   piod->device);
 if(tdfx_info == ((void*)0)) return -ENXIO;






 switch(piod->port) {
  case 132:
   if(piod->size != 2) return -EINVAL;
   break;
  case 131:
   if(piod->size != 4) return -EINVAL;
   break;
  case 130:
   if(piod->size != 4) return -EINVAL;
   break;
  case 129:
   if(piod->size != 4) return -EINVAL;
   break;
  case 128:
   if(piod->size != 4) return -EINVAL;
   break;
  default:
   return -EINVAL;
 }

 retval = pci_read_config(tdfx_info->dev, piod->port & ~3, 4);



 switch (piod->size) {
  case 1:
   copyin(piod->value, &ret_byte, 1);
   preval = ret_byte << (8 * (piod->port & 0x3));
   mask = 0xff << (8 * (piod->port & 0x3));
   break;
  case 2:
   copyin(piod->value, &ret_word, 2);
   preval = ret_word << (8 * (piod->port & 0x3));
   mask = 0xffff << (8 * (piod->port & 0x3));
   break;
  case 4:
   copyin(piod->value, &ret_dword, 4);
   preval = ret_dword;
   mask = ~0;
   break;
  default:
   return -EINVAL;
 }

 retval = (retval & ~mask) | preval;
 pci_write_config(tdfx_info->dev, piod->port & ~3, retval, 4);

 return 0;
}
