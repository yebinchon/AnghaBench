
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fha_hash_entry {int num_threads; int mtx; } ;
struct TYPE_4__ {scalar_t__ st_p2; } ;
typedef TYPE_1__ SVCTHREAD ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int MA_OWNED ;
 int mtx_assert (int ,int ) ;
 int st_alink ;

__attribute__((used)) static void
fha_hash_entry_remove_thread(struct fha_hash_entry *fhe, SVCTHREAD *thread)
{

 mtx_assert(fhe->mtx, MA_OWNED);
 KASSERT(thread->st_p2 == 0,
     ("%d reqs on removed thread %p", thread->st_p2, thread));
 LIST_REMOVE(thread, st_alink);
 fhe->num_threads--;
}
