
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tp_row; int tp_col; } ;
typedef TYPE_2__ term_pos_t ;
typedef char term_char_t ;
struct TYPE_5__ {int tp_col; } ;
struct TYPE_7__ {int tp_col; int tp_row; } ;
struct vt_buf {char** vb_rows; TYPE_1__ vb_scr_size; TYPE_4__ vb_mark_end; TYPE_4__ vb_mark_start; } ;


 int POS_COPY (TYPE_2__,TYPE_4__) ;
 scalar_t__ POS_INDEX (int ,int ) ;
 int vtbuf_htw (struct vt_buf*,int ) ;

void
vtbuf_extract_marked(struct vt_buf *vb, term_char_t *buf, int sz)
{
 int i, r, c, cs, ce;
 term_pos_t s, e;


 if (POS_INDEX(vtbuf_htw(vb, vb->vb_mark_start.tp_row),
     vb->vb_mark_start.tp_col) >
     POS_INDEX(vtbuf_htw(vb, vb->vb_mark_end.tp_row),
     vb->vb_mark_end.tp_col)) {
  POS_COPY(e, vb->vb_mark_start);
  POS_COPY(s, vb->vb_mark_end);
 } else {
  POS_COPY(s, vb->vb_mark_start);
  POS_COPY(e, vb->vb_mark_end);
 }

 i = 0;
 for (r = s.tp_row; r <= e.tp_row; r ++) {
  cs = (r == s.tp_row)?s.tp_col:0;
  ce = (r == e.tp_row)?e.tp_col:vb->vb_scr_size.tp_col;
  for (c = cs; c < ce; c ++) {
   buf[i++] = vb->vb_rows[r][c];
  }

  if (r != e.tp_row) {
   buf[i++] = '\r';
   buf[i++] = '\n';
  }
 }
}
