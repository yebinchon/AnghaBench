
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_pos_t ;
struct vt_buf {int vb_flags; int vb_cursor; } ;


 int VBF_CURSOR ;
 int vtbuf_dirty_cell (struct vt_buf*,int *) ;

void
vtbuf_cursor_position(struct vt_buf *vb, const term_pos_t *p)
{
 if (vb->vb_flags & VBF_CURSOR) {
  vtbuf_dirty_cell(vb, &vb->vb_cursor);
  vb->vb_cursor = *p;
  vtbuf_dirty_cell(vb, &vb->vb_cursor);
 } else {
  vb->vb_cursor = *p;
 }
}
