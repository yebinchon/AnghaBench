
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {struct vt_device* vw_device; } ;
struct vt_device {int vd_flags; } ;
struct terminal {struct vt_window* tm_softc; } ;


 int VDF_QUIET_BELL ;
 int VT_BELLDURATION ;
 int VT_BELLPITCH ;
 int sysbeep (int,int ) ;
 int vt_enable_bell ;

__attribute__((used)) static void
vtterm_bell(struct terminal *tm)
{
 struct vt_window *vw = tm->tm_softc;
 struct vt_device *vd = vw->vw_device;

 if (!vt_enable_bell)
  return;

 if (vd->vd_flags & VDF_QUIET_BELL)
  return;

 sysbeep(1193182 / VT_BELLPITCH, VT_BELLDURATION);
}
