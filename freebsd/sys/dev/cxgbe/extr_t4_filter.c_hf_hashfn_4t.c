
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct t4_filter_tuple {int dport; int sport; int * dip; int * sip; } ;
struct t4_filter_specification {scalar_t__ type; struct t4_filter_tuple val; } ;


 int FNV1_32_INIT ;
 int fnv_32_buf (int *,int,int ) ;

__attribute__((used)) static inline uint32_t
hf_hashfn_4t(struct t4_filter_specification *fs)
{
 struct t4_filter_tuple *ft = &fs->val;
 uint32_t hash;

 if (fs->type) {

  hash = fnv_32_buf(&ft->sip[0], 16, FNV1_32_INIT);
  hash = fnv_32_buf(&ft->dip[0], 16, hash);
 } else {
  hash = fnv_32_buf(&ft->sip[0], 4, FNV1_32_INIT);
  hash = fnv_32_buf(&ft->dip[0], 4, hash);
 }
 hash = fnv_32_buf(&ft->sport, sizeof(ft->sport), hash);
 hash = fnv_32_buf(&ft->dport, sizeof(ft->dport), hash);

 return (hash);
}
