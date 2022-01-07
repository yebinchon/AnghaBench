
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int,char*,int) ;



 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 int mfpvr () ;

__attribute__((used)) static void
pcr_identify(driver_t *driver, device_t parent)
{
 uint16_t vers;
 vers = mfpvr() >> 16;


 switch (vers) {
  case 130:
  case 129:
  case 128:
   break;
  default:
   return;
 }


 if (device_find_child(parent, "pcr", -1) != ((void*)0))
  return;





 if (BUS_ADD_CHILD(parent, 10, "pcr", -1) == ((void*)0))
  device_printf(parent, "add pcr child failed\n");
}
