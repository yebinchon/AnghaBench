
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * items; scalar_t__ alloc; scalar_t__ nr; } ;
struct config_set {int hash_initialized; TYPE_1__ list; int config_hash; } ;


 int config_set_element_cmp ;
 int hashmap_init (int *,int ,int *,int ) ;

void git_configset_init(struct config_set *cs)
{
 hashmap_init(&cs->config_hash, config_set_element_cmp, ((void*)0), 0);
 cs->hash_initialized = 1;
 cs->list.nr = 0;
 cs->list.alloc = 0;
 cs->list.items = ((void*)0);
}
