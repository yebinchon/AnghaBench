
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_mr_cache {TYPE_1__* ent; } ;
struct TYPE_2__ {scalar_t__ cur; scalar_t__ limit; } ;


 int MAX_MR_CACHE_ENTRIES ;

__attribute__((used)) static int someone_adding(struct mlx5_mr_cache *cache)
{
 int i;

 for (i = 0; i < MAX_MR_CACHE_ENTRIES; i++) {
  if (cache->ent[i].cur < cache->ent[i].limit)
   return 1;
 }

 return 0;
}
