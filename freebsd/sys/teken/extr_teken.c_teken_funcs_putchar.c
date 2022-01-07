
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_10__ {int t_softc; TYPE_2__* t_funcs; TYPE_1__ t_winsize; } ;
typedef TYPE_3__ teken_t ;
struct TYPE_11__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
typedef TYPE_4__ teken_pos_t ;
typedef int teken_char_t ;
typedef int teken_attr_t ;
struct TYPE_9__ {int (* tf_putchar ) (int ,TYPE_4__ const*,int ,int const*) ;} ;


 int stub1 (int ,TYPE_4__ const*,int ,int const*) ;
 int teken_assert (int) ;

__attribute__((used)) static inline void
teken_funcs_putchar(const teken_t *t, const teken_pos_t *p, teken_char_t c,
    const teken_attr_t *a)
{

 teken_assert(p->tp_row < t->t_winsize.tp_row);
 teken_assert(p->tp_col < t->t_winsize.tp_col);

 teken_assert(t->t_funcs->tf_putchar != ((void*)0));
 t->t_funcs->tf_putchar(t->t_softc, p, c, a);
}
