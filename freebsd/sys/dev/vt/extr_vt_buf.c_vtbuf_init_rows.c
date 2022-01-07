
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tp_col; int tp_row; } ;
struct vt_buf {int vb_history_size; TYPE_1__ vb_scr_size; int * vb_buffer; int ** vb_rows; } ;


 int MAX (int,int ) ;

__attribute__((used)) static void
vtbuf_init_rows(struct vt_buf *vb)
{
 int r;

 vb->vb_history_size = MAX(vb->vb_history_size, vb->vb_scr_size.tp_row);

 for (r = 0; r < vb->vb_history_size; r++)
  vb->vb_rows[r] = &vb->vb_buffer[r * vb->vb_scr_size.tp_col];
}
