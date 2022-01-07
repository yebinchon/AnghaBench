
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_zone {char* name; scalar_t__ used_mem; } ;


 int M_TTM_ZONE ;
 int free (struct ttm_mem_zone*,int ) ;
 int printf (char*,char*,unsigned long long) ;

__attribute__((used)) static void ttm_mem_zone_kobj_release(struct ttm_mem_zone *zone)
{

 printf("[TTM] Zone %7s: Used memory at exit: %llu kiB\n",
  zone->name, (unsigned long long)zone->used_mem >> 10);
 free(zone, M_TTM_ZONE);
}
