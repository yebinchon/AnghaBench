
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int va_flags; size_t va_index; int va_mode; } ;


 int EBUSY ;
 scalar_t__ VESA_MODE (int ) ;
 int V_ADP_DAC8 ;
 int V_ADP_VESA ;
 int prevvidsw ;
 TYPE_1__* vesa_adp ;
 int vesa_bios_set_dac (int) ;
 int vesa_bios_uninit () ;
 int vesa_unload_ioctl () ;
 int * vidsw ;

__attribute__((used)) static int
vesa_unload(void)
{
 int error;


 if (vesa_adp == ((void*)0))
  return (0);


 if (VESA_MODE(vesa_adp->va_mode))
  return (EBUSY);





 if ((error = vesa_unload_ioctl()) == 0) {
  if (vesa_adp != ((void*)0)) {
   if ((vesa_adp->va_flags & V_ADP_DAC8) != 0) {
    vesa_bios_set_dac(6);
    vesa_adp->va_flags &= ~V_ADP_DAC8;
   }
   vesa_adp->va_flags &= ~V_ADP_VESA;
   vidsw[vesa_adp->va_index] = prevvidsw;
  }
 }

 vesa_bios_uninit();

 return (error);
}
