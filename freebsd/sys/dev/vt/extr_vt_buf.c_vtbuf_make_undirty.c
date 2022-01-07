
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_4__ {TYPE_1__ tr_end; int tr_begin; } ;
struct vt_buf {TYPE_2__ vb_dirtyrect; int vb_scr_size; } ;



__attribute__((used)) static void
vtbuf_make_undirty(struct vt_buf *vb)
{

 vb->vb_dirtyrect.tr_begin = vb->vb_scr_size;
 vb->vb_dirtyrect.tr_end.tp_row = vb->vb_dirtyrect.tr_end.tp_col = 0;
}
