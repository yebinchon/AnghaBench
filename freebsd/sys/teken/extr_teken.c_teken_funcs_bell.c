
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int t_softc; TYPE_1__* t_funcs; } ;
typedef TYPE_2__ teken_t ;
struct TYPE_4__ {int (* tf_bell ) (int ) ;} ;


 int stub1 (int ) ;
 int teken_assert (int ) ;

__attribute__((used)) static inline void
teken_funcs_bell(const teken_t *t)
{

 teken_assert(t->t_funcs->tf_bell != ((void*)0));
 t->t_funcs->tf_bell(t->t_softc);
}
