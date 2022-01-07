
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_buf {int vb_flags; int vb_cursor; } ;


 int VBF_SCROLL ;
 int VTBUF_LOCK (struct vt_buf*) ;
 int VTBUF_UNLOCK (struct vt_buf*) ;
 int vtbuf_dirty_cell (struct vt_buf*,int *) ;

void
vtbuf_scroll_mode(struct vt_buf *vb, int yes)
{
 int oflags, nflags;

 VTBUF_LOCK(vb);
 oflags = vb->vb_flags;
 if (yes)
  vb->vb_flags |= VBF_SCROLL;
 else
  vb->vb_flags &= ~VBF_SCROLL;
 nflags = vb->vb_flags;

 if (oflags != nflags)
  vtbuf_dirty_cell(vb, &vb->vb_cursor);
 VTBUF_UNLOCK(vb);
}
