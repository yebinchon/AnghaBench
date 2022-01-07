
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fha_hash_entry {int num_exclusive; int num_rw; int mtx; } ;


 int LK_EXCLUSIVE ;
 int MA_OWNED ;
 int mtx_assert (int ,int ) ;

__attribute__((used)) static void
fha_hash_entry_add_op(struct fha_hash_entry *fhe, int locktype, int count)
{

 mtx_assert(fhe->mtx, MA_OWNED);
 if (LK_EXCLUSIVE == locktype)
  fhe->num_exclusive += count;
 else
  fhe->num_rw += count;
}
