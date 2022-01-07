
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uma_bucket_zone {scalar_t__ ubz_entries; int ubz_zone; } ;


 int UMA_RECLAIM_DRAIN ;
 struct uma_bucket_zone* bucket_zones ;
 int uma_zone_reclaim (int ,int ) ;

__attribute__((used)) static void
bucket_zone_drain(void)
{
 struct uma_bucket_zone *ubz;

 for (ubz = &bucket_zones[0]; ubz->ubz_entries != 0; ubz++)
  uma_zone_reclaim(ubz->ubz_zone, UMA_RECLAIM_DRAIN);
}
