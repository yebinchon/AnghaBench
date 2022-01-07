
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pri; } ;
typedef TYPE_1__ weight_t ;
typedef int int32_t ;


 int COLLATE_SUBST_PRIORITY ;
 int * RB_FIND (int *,int *,TYPE_1__*) ;
 int RB_INSERT (int *,int *,TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int fprintf (int ,char*) ;
 int resolve_pri (int ) ;
 int stderr ;
 int * weights ;

void
add_weight(int32_t ref, int pass)
{
 weight_t srch;
 weight_t *w;

 srch.pri = resolve_pri(ref);


 if (srch.pri == 0)
  return;


 if (srch.pri & COLLATE_SUBST_PRIORITY)
  return;

 if (RB_FIND(weights, &weights[pass], &srch) != ((void*)0))
  return;

 if ((w = calloc(1, sizeof(*w))) == ((void*)0)) {
  fprintf(stderr, "out of memory");
  return;
 }
 w->pri = srch.pri;
 RB_INSERT(weights, &weights[pass], w);
}
