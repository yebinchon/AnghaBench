
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksem_mapping {char* km_path; int km_ksem; int km_fnv; } ;
struct ksem {char* ks_path; } ;
typedef int Fnv32_t ;


 int KSEM_HASH (int ) ;
 int LIST_INSERT_HEAD (int ,struct ksem_mapping*,int ) ;
 int M_KSEM ;
 int M_WAITOK ;
 int km_link ;
 int ksem_hold (struct ksem*) ;
 struct ksem_mapping* malloc (int,int ,int ) ;

__attribute__((used)) static void
ksem_insert(char *path, Fnv32_t fnv, struct ksem *ks)
{
 struct ksem_mapping *map;

 map = malloc(sizeof(struct ksem_mapping), M_KSEM, M_WAITOK);
 map->km_path = path;
 map->km_fnv = fnv;
 map->km_ksem = ksem_hold(ks);
 ks->ks_path = path;
 LIST_INSERT_HEAD(KSEM_HASH(fnv), map, km_link);
}
