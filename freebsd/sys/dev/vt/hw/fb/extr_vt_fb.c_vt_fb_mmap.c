
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
typedef int uint8_t ;
struct vt_device {struct fb_info* vd_softc; } ;
struct fb_info {int fb_flags; scalar_t__ fb_size; scalar_t__ fb_pbase; int fb_memattr; scalar_t__ fb_vbase; } ;


 int EINVAL ;
 int ENODEV ;
 int FB_FLAG_MEMATTR ;
 int FB_FLAG_NOMMAP ;
 int VM_MEMATTR_WRITE_COMBINING ;
 scalar_t__ vtophys (int *) ;

int
vt_fb_mmap(struct vt_device *vd, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
 struct fb_info *info;

 info = vd->vd_softc;

 if (info->fb_flags & FB_FLAG_NOMMAP)
  return (ENODEV);

 if (offset >= 0 && offset < info->fb_size) {
  if (info->fb_pbase == 0) {
   *paddr = vtophys((uint8_t *)info->fb_vbase + offset);
  } else {
   *paddr = info->fb_pbase + offset;
   if (info->fb_flags & FB_FLAG_MEMATTR)
    *memattr = info->fb_memattr;




  }
  return (0);
 }

 return (EINVAL);
}
