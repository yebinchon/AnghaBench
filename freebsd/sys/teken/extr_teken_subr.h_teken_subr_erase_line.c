
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int tp_col; } ;
struct TYPE_11__ {int tp_col; scalar_t__ tp_row; } ;
struct TYPE_14__ {int t_curattr; TYPE_4__ t_winsize; TYPE_2__ t_cursor; } ;
typedef TYPE_5__ teken_t ;
struct TYPE_12__ {int tp_col; scalar_t__ tp_row; } ;
struct TYPE_10__ {int tp_col; scalar_t__ tp_row; } ;
struct TYPE_15__ {TYPE_3__ tr_end; TYPE_1__ tr_begin; } ;
typedef TYPE_6__ teken_rect_t ;


 int BLANK ;
 int teken_funcs_fill (TYPE_5__ const*,TYPE_6__*,int ,int *) ;

__attribute__((used)) static void
teken_subr_erase_line(const teken_t *t, unsigned int mode)
{
 teken_rect_t r;

 r.tr_begin.tp_row = t->t_cursor.tp_row;
 r.tr_end.tp_row = t->t_cursor.tp_row + 1;

 switch (mode) {
 case 1:
  r.tr_begin.tp_col = 0;
  r.tr_end.tp_col = t->t_cursor.tp_col + 1;
  break;
 case 2:
  r.tr_begin.tp_col = 0;
  r.tr_end.tp_col = t->t_winsize.tp_col;
  break;
 default:
  r.tr_begin.tp_col = t->t_cursor.tp_col;
  r.tr_end.tp_col = t->t_winsize.tp_col;
  break;
 }

 teken_funcs_fill(t, &r, BLANK, &t->t_curattr);
}
