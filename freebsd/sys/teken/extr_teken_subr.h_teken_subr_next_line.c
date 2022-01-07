
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tp_col; } ;
struct TYPE_6__ {TYPE_1__ t_cursor; } ;
typedef TYPE_2__ teken_t ;


 int teken_subr_newline (TYPE_2__*) ;

__attribute__((used)) static void
teken_subr_next_line(teken_t *t)
{

 t->t_cursor.tp_col = 0;
 teken_subr_newline(t);
}
