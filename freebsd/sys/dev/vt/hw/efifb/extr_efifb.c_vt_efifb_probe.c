
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int dummy; } ;
struct efi_fb {int dummy; } ;
typedef int * caddr_t ;


 int CN_DEAD ;
 int CN_INTERNAL ;
 int MODINFOMD_EFI_FB ;
 int MODINFO_METADATA ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int * preload_search_by_type (char*) ;
 scalar_t__ preload_search_info (int *,int) ;

__attribute__((used)) static int
vt_efifb_probe(struct vt_device *vd)
{
 int disabled;
 struct efi_fb *efifb;
 caddr_t kmdp;

 disabled = 0;
 TUNABLE_INT_FETCH("hw.syscons.disable", &disabled);
 if (disabled != 0)
  return (CN_DEAD);

 kmdp = preload_search_by_type("elf kernel");
 if (kmdp == ((void*)0))
  kmdp = preload_search_by_type("elf64 kernel");
 efifb = (struct efi_fb *)preload_search_info(kmdp,
     MODINFO_METADATA | MODINFOMD_EFI_FB);
 if (efifb == ((void*)0))
  return (CN_DEAD);

 return (CN_INTERNAL);
}
