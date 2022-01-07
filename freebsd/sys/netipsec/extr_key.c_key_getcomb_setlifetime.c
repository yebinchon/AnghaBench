
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sadb_comb {int sadb_comb_soft_allocations; int sadb_comb_hard_allocations; int sadb_comb_hard_addtime; int sadb_comb_soft_addtime; int sadb_comb_soft_usetime; int sadb_comb_hard_usetime; scalar_t__ sadb_comb_hard_bytes; scalar_t__ sadb_comb_soft_bytes; } ;



__attribute__((used)) static void
key_getcomb_setlifetime(struct sadb_comb *comb)
{

 comb->sadb_comb_soft_allocations = 1;
 comb->sadb_comb_hard_allocations = 1;
 comb->sadb_comb_soft_bytes = 0;
 comb->sadb_comb_hard_bytes = 0;
 comb->sadb_comb_hard_addtime = 86400;
 comb->sadb_comb_soft_addtime = comb->sadb_comb_soft_addtime * 80 / 100;
 comb->sadb_comb_soft_usetime = 28800;
 comb->sadb_comb_hard_usetime = comb->sadb_comb_hard_usetime * 80 / 100;
}
