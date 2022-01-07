
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct base_data {scalar_t__ size; scalar_t__ data; } ;
struct TYPE_2__ {int base_cache_used; } ;


 int FREE_AND_NULL (scalar_t__) ;
 TYPE_1__* get_thread_data () ;

__attribute__((used)) static void free_base_data(struct base_data *c)
{
 if (c->data) {
  FREE_AND_NULL(c->data);
  get_thread_data()->base_cache_used -= c->size;
 }
}
