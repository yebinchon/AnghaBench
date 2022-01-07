
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct base_data {int * child; struct base_data* base; } ;
struct TYPE_2__ {int * base_cache; } ;


 int free_base_data (struct base_data*) ;
 TYPE_1__* get_thread_data () ;

__attribute__((used)) static void unlink_base_data(struct base_data *c)
{
 struct base_data *base = c->base;
 if (base)
  base->child = ((void*)0);
 else
  get_thread_data()->base_cache = ((void*)0);
 free_base_data(c);
}
