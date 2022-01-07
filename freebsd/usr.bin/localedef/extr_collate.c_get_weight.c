
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pri; int opt; } ;
typedef TYPE_1__ weight_t ;
typedef int int32_t ;


 int COLLATE_SUBST_PRIORITY ;
 int INTERR ;
 TYPE_1__* RB_FIND (int *,int *,TYPE_1__*) ;
 int resolve_pri (int) ;
 int * weights ;

int32_t
get_weight(int32_t ref, int pass)
{
 weight_t srch;
 weight_t *w;
 int32_t pri;

 pri = resolve_pri(ref);
 if (pri & COLLATE_SUBST_PRIORITY) {
  return (pri);
 }
 if (pri <= 0) {
  return (pri);
 }
 srch.pri = pri;
 if ((w = RB_FIND(weights, &weights[pass], &srch)) == ((void*)0)) {
  INTERR;
  return (-1);
 }
 return (w->opt);
}
