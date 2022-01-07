
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t iv_pri; int iv_vec; scalar_t__ iv_refcnt; struct TYPE_2__* iv_arg; int iv_func; } ;


 int IV_MAX ;
 size_t PIL_LOW ;
 int PIL_MAX ;
 int intr_fast ;
 int * intr_handlers ;
 int intr_stray_level ;
 int intr_stray_vector ;
 TYPE_1__* intr_vectors ;

void
intr_init1()
{
 int i;


 for (i = 0; i < PIL_MAX; i++)
  intr_handlers[i] = intr_stray_level;
 for (i = 0; i < IV_MAX; i++) {
  intr_vectors[i].iv_func = intr_stray_vector;
  intr_vectors[i].iv_arg = &intr_vectors[i];
  intr_vectors[i].iv_pri = PIL_LOW;
  intr_vectors[i].iv_vec = i;
  intr_vectors[i].iv_refcnt = 0;
 }
 intr_handlers[PIL_LOW] = intr_fast;
}
