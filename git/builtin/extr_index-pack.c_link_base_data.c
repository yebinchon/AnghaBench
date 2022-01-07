
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct base_data {scalar_t__ size; scalar_t__ data; struct base_data* child; struct base_data* base; } ;
struct TYPE_2__ {int base_cache_used; struct base_data* base_cache; } ;


 TYPE_1__* get_thread_data () ;
 int prune_base_data (struct base_data*) ;

__attribute__((used)) static void link_base_data(struct base_data *base, struct base_data *c)
{
 if (base)
  base->child = c;
 else
  get_thread_data()->base_cache = c;

 c->base = base;
 c->child = ((void*)0);
 if (c->data)
  get_thread_data()->base_cache_used += c->size;
 prune_base_data(c);
}
