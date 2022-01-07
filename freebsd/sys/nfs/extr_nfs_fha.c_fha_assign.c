
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct svc_req {scalar_t__ rq_prog; int rq_vers; struct fha_hash_entry* rq_p1; int rq_p3; int rq_p2; } ;
struct TYPE_8__ {scalar_t__ enable; } ;
struct fha_callbacks {int dummy; } ;
struct fha_params {TYPE_1__ ctls; struct fha_callbacks callbacks; } ;
struct fha_info {int offset; int locktype; int fh; } ;
struct fha_hash_entry {int mtx; } ;
struct TYPE_9__ {int st_lock; int st_p3; int st_p2; } ;
typedef TYPE_2__ SVCTHREAD ;


 int KASSERT (TYPE_2__*,char*) ;
 scalar_t__ NFS_PROG ;
 int fha_extract_info (struct svc_req*,struct fha_info*,struct fha_callbacks*) ;
 int fha_hash_entry_add_op (struct fha_hash_entry*,int ,int) ;
 TYPE_2__* fha_hash_entry_choose_thread (struct fha_params*,struct fha_hash_entry*,struct fha_info*,TYPE_2__*) ;
 struct fha_hash_entry* fha_hash_entry_lookup (struct fha_params*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int ) ;

SVCTHREAD *
fha_assign(SVCTHREAD *this_thread, struct svc_req *req,
    struct fha_params *softc)
{
 SVCTHREAD *thread;
 struct fha_info i;
 struct fha_hash_entry *fhe;
 struct fha_callbacks *cb;

 cb = &softc->callbacks;


 if (softc->ctls.enable == 0)
  goto thist;




 if (req->rq_prog != NFS_PROG)
  goto thist;

 if (req->rq_vers != 2 && req->rq_vers != 3)
  goto thist;

 fha_extract_info(req, &i, cb);





 fhe = fha_hash_entry_lookup(softc, i.fh);
 req->rq_p1 = fhe;
 req->rq_p2 = i.locktype;
 req->rq_p3 = i.offset;





 thread = fha_hash_entry_choose_thread(softc, fhe, &i, this_thread);
 KASSERT(thread, ("fha_assign: NULL thread!"));
 fha_hash_entry_add_op(fhe, i.locktype, 1);
 thread->st_p2++;
 thread->st_p3 = i.offset;





 mtx_lock(&thread->st_lock);
 mtx_unlock(fhe->mtx);

 return (thread);
thist:
 req->rq_p1 = ((void*)0);
 mtx_lock(&this_thread->st_lock);
 return (this_thread);
}
