
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_mem_zone {char* name; int zone_mem; int max_mem; int emer_mem; int swap_limit; int kobj_ref; struct ttm_mem_global* glob; scalar_t__ used_mem; } ;
struct ttm_mem_global {int num_zones; struct ttm_mem_zone** zones; struct ttm_mem_zone* zone_dma32; } ;


 int M_TTM_ZONE ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct ttm_mem_zone*,int ) ;
 struct ttm_mem_zone* malloc (int,int ,int) ;
 int refcount_init (int *,int) ;

__attribute__((used)) static int ttm_mem_init_dma32_zone(struct ttm_mem_global *glob,
    uint64_t mem)
{
 struct ttm_mem_zone *zone;

 zone = malloc(sizeof(*zone), M_TTM_ZONE, M_WAITOK | M_ZERO);





 if (mem <= ((uint64_t) 1ULL << 32)) {
  free(zone, M_TTM_ZONE);
  return 0;
 }







 mem = ((uint64_t) 1ULL << 32);
 zone->name = "dma32";
 zone->zone_mem = mem;
 zone->max_mem = mem >> 1;
 zone->emer_mem = (mem >> 1) + (mem >> 2);
 zone->swap_limit = zone->max_mem - (mem >> 3);
 zone->used_mem = 0;
 zone->glob = glob;
 glob->zone_dma32 = zone;
 refcount_init(&zone->kobj_ref, 1);
 glob->zones[glob->num_zones++] = zone;
 return 0;
}
