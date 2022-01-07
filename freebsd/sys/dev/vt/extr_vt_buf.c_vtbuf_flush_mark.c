
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ tp_row; int tp_col; } ;
struct TYPE_10__ {int tp_row; scalar_t__ tp_col; } ;
struct TYPE_13__ {TYPE_5__ tr_end; TYPE_3__ tr_begin; } ;
typedef TYPE_6__ term_rect_t ;
struct TYPE_11__ {int tp_col; } ;
struct TYPE_9__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_8__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct vt_buf {TYPE_4__ vb_scr_size; TYPE_2__ vb_mark_end; TYPE_1__ vb_mark_start; } ;


 scalar_t__ MAX (int,int) ;
 int MIN (int,int) ;
 int VTBUF_LOCK (struct vt_buf*) ;
 int VTBUF_UNLOCK (struct vt_buf*) ;
 int vtbuf_dirty (struct vt_buf*,TYPE_6__*) ;
 int vtbuf_htw (struct vt_buf*,scalar_t__) ;

__attribute__((used)) static void
vtbuf_flush_mark(struct vt_buf *vb)
{
 term_rect_t area;
 int s, e;


 if ((vb->vb_mark_start.tp_col != vb->vb_mark_end.tp_col) ||
     (vb->vb_mark_start.tp_row != vb->vb_mark_end.tp_row)) {

  s = vtbuf_htw(vb, vb->vb_mark_start.tp_row);
  e = vtbuf_htw(vb, vb->vb_mark_end.tp_row);

  area.tr_begin.tp_col = 0;
  area.tr_begin.tp_row = MIN(s, e);

  area.tr_end.tp_col = vb->vb_scr_size.tp_col;
  area.tr_end.tp_row = MAX(s, e) + 1;

  VTBUF_LOCK(vb);
  vtbuf_dirty(vb, &area);
  VTBUF_UNLOCK(vb);
 }
}
