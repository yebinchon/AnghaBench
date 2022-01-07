
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int term_pos_t ;
struct vt_window {int vw_flags; TYPE_1__* vw_device; int vw_buf; int vw_font; } ;
struct TYPE_2__ {int vd_flags; } ;


 int VDF_INVALID ;
 int VWF_SCROLL ;
 int vt_resume_flush_timer (struct vt_window*,int ) ;
 int vt_termsize (TYPE_1__*,int ,int *) ;
 int vthistory_seek (int *,int,int) ;

__attribute__((used)) static void
vt_scroll(struct vt_window *vw, int offset, int whence)
{
 int diff;
 term_pos_t size;

 if ((vw->vw_flags & VWF_SCROLL) == 0)
  return;

 vt_termsize(vw->vw_device, vw->vw_font, &size);

 diff = vthistory_seek(&vw->vw_buf, offset, whence);
 if (diff)
  vw->vw_device->vd_flags |= VDF_INVALID;
 vt_resume_flush_timer(vw, 0);
}
