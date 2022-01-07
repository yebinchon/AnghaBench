
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int term_char_t ;
struct TYPE_6__ {int tp_col; size_t tp_row; } ;
struct TYPE_5__ {int tp_col; size_t tp_row; } ;
struct TYPE_4__ {int tp_col; } ;
struct vt_buf {int vb_mark_last; TYPE_3__ vb_mark_end; TYPE_2__ vb_mark_start; TYPE_1__ vb_scr_size; int ** vb_rows; } ;


 char TCHAR_CHARACTER (int ) ;







 int vtbuf_flush_mark (struct vt_buf*) ;
 void* vtbuf_wth (struct vt_buf*,int) ;

int
vtbuf_set_mark(struct vt_buf *vb, int type, int col, int row)
{
 term_char_t *r;
 int i;

 switch (type) {
 case 134:
  if (vb->vb_mark_last != 132)
   return (0);

 case 132:
 case 133:
  vtbuf_flush_mark(vb);
  vb->vb_mark_end.tp_col = col;
  vb->vb_mark_end.tp_row = vtbuf_wth(vb, row);
  break;
 case 129:
  vtbuf_flush_mark(vb);
  vb->vb_mark_start.tp_col = col;
  vb->vb_mark_start.tp_row = vtbuf_wth(vb, row);

  vb->vb_mark_end.tp_col = col;
  vb->vb_mark_end.tp_row = vtbuf_wth(vb, row);
  break;
 case 128:
  vtbuf_flush_mark(vb);
  vb->vb_mark_start.tp_row = vb->vb_mark_end.tp_row =
      vtbuf_wth(vb, row);
  r = vb->vb_rows[vb->vb_mark_start.tp_row];
  for (i = col; i >= 0; i --) {
   if (TCHAR_CHARACTER(r[i]) == ' ') {
    vb->vb_mark_start.tp_col = i + 1;
    break;
   }
  }
  for (i = col; i < vb->vb_scr_size.tp_col; i ++) {
   if (TCHAR_CHARACTER(r[i]) == ' ') {
    vb->vb_mark_end.tp_col = i;
    break;
   }
  }
  if (vb->vb_mark_start.tp_col > vb->vb_mark_end.tp_col)
   vb->vb_mark_start.tp_col = vb->vb_mark_end.tp_col;
  break;
 case 130:
  vtbuf_flush_mark(vb);
  vb->vb_mark_start.tp_col = 0;
  vb->vb_mark_end.tp_col = vb->vb_scr_size.tp_col;
  vb->vb_mark_start.tp_row = vb->vb_mark_end.tp_row =
      vtbuf_wth(vb, row);
  break;
 case 131:
  vb->vb_mark_last = type;

 default:

  return (0);
 }

 vb->vb_mark_last = type;

 vtbuf_flush_mark(vb);
 return (1);
}
