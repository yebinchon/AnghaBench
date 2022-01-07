
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_flags; } ;


 int EINVAL ;
 int VWF_SWWAIT_ACQ ;

__attribute__((used)) static int
finish_vt_acq(struct vt_window *vw)
{

 if (vw->vw_flags & VWF_SWWAIT_ACQ) {
  vw->vw_flags &= ~VWF_SWWAIT_ACQ;
  return (0);
 }
 return (EINVAL);
}
