
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_buf {int vb_flags; int vb_cursor; } ;


 int VBF_CURSOR ;
 int vtbuf_dirty_cell (struct vt_buf*,int *) ;

void
vtbuf_cursor_visibility(struct vt_buf *vb, int yes)
{
 int oflags, nflags;

 oflags = vb->vb_flags;
 if (yes)
  vb->vb_flags |= VBF_CURSOR;
 else
  vb->vb_flags &= ~VBF_CURSOR;
 nflags = vb->vb_flags;

 if (oflags != nflags)
  vtbuf_dirty_cell(vb, &vb->vb_cursor);
}
