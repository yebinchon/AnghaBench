
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_15__ {scalar_t__ tp_col; } ;
struct TYPE_12__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_16__ {int t_curattr; TYPE_3__ t_winsize; TYPE_11__ t_cursor; } ;
typedef TYPE_4__ teken_t ;
struct TYPE_14__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_13__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_17__ {TYPE_2__ tr_begin; TYPE_1__ tr_end; } ;
typedef TYPE_5__ teken_rect_t ;


 int BLANK ;
 int teken_funcs_copy (TYPE_4__ const*,TYPE_5__*,TYPE_11__*) ;
 int teken_funcs_fill (TYPE_4__ const*,TYPE_5__*,int ,int *) ;

__attribute__((used)) static void
teken_subr_delete_character(const teken_t *t, unsigned int ncols)
{
 teken_rect_t tr;

 tr.tr_begin.tp_row = t->t_cursor.tp_row;
 tr.tr_end.tp_row = t->t_cursor.tp_row + 1;
 tr.tr_end.tp_col = t->t_winsize.tp_col;

 if (t->t_cursor.tp_col + ncols >= t->t_winsize.tp_col) {
  tr.tr_begin.tp_col = t->t_cursor.tp_col;
 } else {

  tr.tr_begin.tp_col = t->t_cursor.tp_col + ncols;
  teken_funcs_copy(t, &tr, &t->t_cursor);

  tr.tr_begin.tp_col = t->t_winsize.tp_col - ncols;
 }


 teken_funcs_fill(t, &tr, BLANK, &t->t_curattr);
}
