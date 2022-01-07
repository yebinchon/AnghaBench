
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct svc_req {int rq_p2; struct fha_hash_entry* rq_p1; } ;
struct mtx {int dummy; } ;
struct fha_hash_entry {scalar_t__ num_rw; scalar_t__ num_exclusive; struct mtx* mtx; } ;
struct TYPE_4__ {scalar_t__ st_p2; } ;
typedef TYPE_1__ SVCTHREAD ;


 int KASSERT (int,char*) ;
 int fha_hash_entry_add_op (struct fha_hash_entry*,int ,int) ;
 int fha_hash_entry_remove (struct fha_hash_entry*) ;
 int fha_hash_entry_remove_thread (struct fha_hash_entry*,TYPE_1__*) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;

void
fha_nd_complete(SVCTHREAD *thread, struct svc_req *req)
{
 struct fha_hash_entry *fhe = req->rq_p1;
 struct mtx *mtx;





 if (!fhe)
  return;

 mtx = fhe->mtx;
 mtx_lock(mtx);
 fha_hash_entry_add_op(fhe, req->rq_p2, -1);
 thread->st_p2--;
 KASSERT(thread->st_p2 >= 0, ("Negative request count %d on %p",
     thread->st_p2, thread));
 if (thread->st_p2 == 0) {
  fha_hash_entry_remove_thread(fhe, thread);
  if (0 == fhe->num_rw + fhe->num_exclusive)
   fha_hash_entry_remove(fhe);
 }
 mtx_unlock(mtx);
}
