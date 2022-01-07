
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_lock; int sc_modules; } ;


 int KASSERT (int ,char*) ;
 int M_ICL ;
 int TAILQ_EMPTY (int *) ;
 int free (TYPE_1__*,int ) ;
 TYPE_1__* sc ;
 int sx_destroy (int *) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static int
icl_unload(void)
{

 sx_slock(&sc->sc_lock);
 KASSERT(TAILQ_EMPTY(&sc->sc_modules), ("still have modules"));
 sx_sunlock(&sc->sc_lock);

 sx_destroy(&sc->sc_lock);
 free(sc, M_ICL);

 return (0);
}
