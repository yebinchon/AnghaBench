
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fha_hash_entry {int num_threads; int threads; int mtx; } ;
struct TYPE_4__ {scalar_t__ st_p2; } ;
typedef TYPE_1__ SVCTHREAD ;


 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int MA_OWNED ;
 int mtx_assert (int ,int ) ;
 int st_alink ;

__attribute__((used)) static void
fha_hash_entry_add_thread(struct fha_hash_entry *fhe, SVCTHREAD *thread)
{

 mtx_assert(fhe->mtx, MA_OWNED);
 thread->st_p2 = 0;
 LIST_INSERT_HEAD(&fhe->threads, thread, st_alink);
 fhe->num_threads++;
}
