
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
typedef TYPE_1__ teken_pos_t ;


 scalar_t__ NCOLS ;
 scalar_t__ NROWS ;
 int printchar (TYPE_1__*) ;
 int redraw_border () ;

__attribute__((used)) static void
redraw_all(void)
{
 teken_pos_t tp;

 for (tp.tp_row = 0; tp.tp_row < NROWS; tp.tp_row++)
  for (tp.tp_col = 0; tp.tp_col < NCOLS; tp.tp_col++)
   printchar(&tp);

 redraw_border();
}
