
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_int ;
struct tdfx_softc {int dev; int addr1; int addr0; int type; int vendor; } ;
struct tdfx_pio_data {scalar_t__ device; int port; int size; int value; } ;


 int EINVAL ;
 int ENXIO ;
 int copyout (int *,int ,int) ;
 scalar_t__ devclass_get_softc (int ,scalar_t__) ;
 int pci_read_config (int ,int,int) ;
 int printf (char*) ;
 scalar_t__ tdfx_count ;
 int tdfx_devclass ;

__attribute__((used)) static int
tdfx_query_fetch(u_int cmd, struct tdfx_pio_data *piod)
{


 u_int8_t ret_byte;
 u_int16_t ret_word;
 u_int32_t ret_dword;
 struct tdfx_softc* tdfx_info = ((void*)0);




 if((piod == ((void*)0)) ||(tdfx_count <= piod->device) ||
   (piod->device < 0)) {



  return -EINVAL;
 }

 tdfx_info = (struct tdfx_softc*)devclass_get_softc(tdfx_devclass,
   piod->device);

 if(tdfx_info == ((void*)0)) return -ENXIO;




 switch(piod->port) {
  case 130:
   if(piod->size != 2) return -EINVAL;
   copyout(&tdfx_info->vendor, piod->value, piod->size);
   return 0;
  case 135:
   if(piod->size != 2) return -EINVAL;
   copyout(&tdfx_info->type, piod->value, piod->size);
   return 0;
  case 137:
   if(piod->size != 4) return -EINVAL;
   copyout(&tdfx_info->addr0, piod->value, piod->size);
   return 0;
  case 136:
   if(piod->size != 4) return -EINVAL;
   copyout(&tdfx_info->addr1, piod->value, piod->size);
   return 0;
  case 132:
   if(piod->size != 1) return -EINVAL;
   break;
  case 134:
   if(piod->size != 2) return -EINVAL;
   break;
  case 133:
   if(piod->size != 2) return -EINVAL;
   break;
  case 129:
   if(piod->size != 4) return -EINVAL;
   break;
  case 131:
   if(piod->size != 1) return -EINVAL;
   break;
  case 128:
   if(piod->size != 4) return -EINVAL;
   break;
  default:
   return -EINVAL;
 }



 switch(piod->size) {
  case 1:
   ret_byte = pci_read_config(tdfx_info[piod->device].dev,
     piod->port, 1);
   copyout(&ret_byte, piod->value, 1);
   break;
  case 2:
   ret_word = pci_read_config(tdfx_info[piod->device].dev,
     piod->port, 2);
   copyout(&ret_word, piod->value, 2);
   break;
  case 4:
   ret_dword = pci_read_config(tdfx_info[piod->device].dev,
     piod->port, 4);
   copyout(&ret_dword, piod->value, 4);
   break;
  default:
   return -EINVAL;
 }
 return 0;
}
