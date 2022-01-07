
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tp_row; } ;
struct vt_buf {int vb_flags; int vb_roffset; int vb_curroffset; int vb_history_size; TYPE_1__ vb_scr_size; } ;


 int MAX (int,int) ;
 int MIN (int,int) ;
 int VBF_HISTORY_FULL ;
 int VBF_SCROLL ;




int
vthistory_seek(struct vt_buf *vb, int offset, int whence)
{
 int diff, top, bottom, roffset;


 if ((vb->vb_flags & VBF_SCROLL) == 0) {
  if (vb->vb_roffset != vb->vb_curroffset) {
   vb->vb_roffset = vb->vb_curroffset;
   return (0xffff);
  }
  return (0);
 }


 bottom = vb->vb_curroffset;
 top = (vb->vb_flags & VBF_HISTORY_FULL) ?
     bottom + vb->vb_scr_size.tp_row - vb->vb_history_size :
     0;

 roffset = 0;
 switch (whence) {
 case 128:
  if (offset < 0)
   offset = 0;
  roffset = top + offset;
  break;
 case 130:




  roffset = vb->vb_roffset;
  if (roffset >= bottom + vb->vb_scr_size.tp_row)
   roffset -= vb->vb_history_size;

  roffset += offset;
  roffset = MAX(roffset, top);
  roffset = MIN(roffset, bottom);

  if (roffset < 0)
   roffset = vb->vb_history_size + roffset;

  break;
 case 129:

  roffset = vb->vb_curroffset;
  break;
 }

 diff = vb->vb_roffset != roffset;
 vb->vb_roffset = roffset;

 return (diff);
}
