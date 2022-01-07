
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_rect_t ;
struct vt_buf {int vb_dirtyrect; } ;


 int vtbuf_make_undirty (struct vt_buf*) ;

void
vtbuf_undirty(struct vt_buf *vb, term_rect_t *r)
{

 *r = vb->vb_dirtyrect;
 vtbuf_make_undirty(vb);
}
