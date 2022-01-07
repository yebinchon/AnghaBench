
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_modules; int sc_lock; } ;


 int M_ICL ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 TYPE_1__* malloc (int,int ,int) ;
 TYPE_1__* sc ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
icl_load(void)
{

 sc = malloc(sizeof(*sc), M_ICL, M_ZERO | M_WAITOK);
 sx_init(&sc->sc_lock, "icl");
 TAILQ_INIT(&sc->sc_modules);

 return (0);
}
