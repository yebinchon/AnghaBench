
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tp_col; int tp_row; } ;
typedef TYPE_2__ term_pos_t ;
struct TYPE_4__ {int tp_col; int tp_row; } ;
struct vt_buf {TYPE_1__ vb_scr_size; } ;


 int vtbuf_grow (struct vt_buf*,TYPE_2__*,unsigned int) ;

void
vtbuf_sethistory_size(struct vt_buf *vb, unsigned int size)
{
 term_pos_t p;


 p.tp_row = vb->vb_scr_size.tp_row;
 p.tp_col = vb->vb_scr_size.tp_col;
 vtbuf_grow(vb, &p, size);
}
