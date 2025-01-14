
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
struct vt_window {struct vt_device* vw_device; } ;
struct vt_device {TYPE_1__* vd_driver; } ;
struct terminal {struct vt_window* tm_softc; } ;
struct TYPE_2__ {int (* vd_fb_mmap ) (struct vt_device*,int ,int *,int,int *) ;} ;


 int ENXIO ;
 int stub1 (struct vt_device*,int ,int *,int,int *) ;

__attribute__((used)) static int
vtterm_mmap(struct terminal *tm, vm_ooffset_t offset, vm_paddr_t * paddr,
    int nprot, vm_memattr_t *memattr)
{
 struct vt_window *vw = tm->tm_softc;
 struct vt_device *vd = vw->vw_device;

 if (vd->vd_driver->vd_fb_mmap)
  return (vd->vd_driver->vd_fb_mmap(vd, offset, paddr, nprot,
      memattr));

 return (ENXIO);
}
