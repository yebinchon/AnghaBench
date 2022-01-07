
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_8__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_7__ {TYPE_1__ tr_end; TYPE_3__ tr_begin; } ;
typedef TYPE_2__ term_rect_t ;
typedef TYPE_3__ term_pos_t ;
struct vt_buf {int dummy; } ;


 int vtbuf_dirty (struct vt_buf*,TYPE_2__*) ;

__attribute__((used)) static inline void
vtbuf_dirty_cell(struct vt_buf *vb, const term_pos_t *p)
{
 term_rect_t area;

 area.tr_begin = *p;
 area.tr_end.tp_row = p->tp_row + 1;
 area.tr_end.tp_col = p->tp_col + 1;
 vtbuf_dirty(vb, &area);
}
