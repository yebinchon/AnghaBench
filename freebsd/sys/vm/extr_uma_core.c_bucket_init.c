
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uma_bucket_zone {int ubz_entries; int ubz_name; int ubz_zone; } ;
struct uma_bucket {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int UMA_ZFLAG_BUCKET ;
 int UMA_ZONE_MTXCLASS ;
 int UMA_ZONE_NUMA ;
 struct uma_bucket_zone* bucket_zones ;
 int roundup (int,int) ;
 int uma_zcreate (int ,int,int *,int *,int *,int *,int ,int) ;

__attribute__((used)) static void
bucket_init(void)
{
 struct uma_bucket_zone *ubz;
 int size;

 for (ubz = &bucket_zones[0]; ubz->ubz_entries != 0; ubz++) {
  size = roundup(sizeof(struct uma_bucket), sizeof(void *));
  size += sizeof(void *) * ubz->ubz_entries;
  ubz->ubz_zone = uma_zcreate(ubz->ubz_name, size,
      ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR,
      UMA_ZONE_MTXCLASS | UMA_ZFLAG_BUCKET | UMA_ZONE_NUMA);
 }
}
