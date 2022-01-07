
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fha_hash_entry {int mtx; } ;


 int LIST_REMOVE (struct fha_hash_entry*,int ) ;
 int MA_OWNED ;
 int fha_hash_entry_destroy (struct fha_hash_entry*) ;
 int link ;
 int mtx_assert (int ,int ) ;

__attribute__((used)) static void
fha_hash_entry_remove(struct fha_hash_entry *e)
{

 mtx_assert(e->mtx, MA_OWNED);
 LIST_REMOVE(e, link);
 fha_hash_entry_destroy(e);
}
