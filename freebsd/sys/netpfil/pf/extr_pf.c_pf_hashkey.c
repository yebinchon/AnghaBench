
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pf_state_key_cmp {int dummy; } ;
struct pf_state_key {int dummy; } ;


 int V_pf_hashseed ;
 int murmur3_32_hash32 (int*,int,int ) ;
 int pf_hashmask ;

__attribute__((used)) static __inline uint32_t
pf_hashkey(struct pf_state_key *sk)
{
 uint32_t h;

 h = murmur3_32_hash32((uint32_t *)sk,
     sizeof(struct pf_state_key_cmp)/sizeof(uint32_t),
     V_pf_hashseed);

 return (h & pf_hashmask);
}
