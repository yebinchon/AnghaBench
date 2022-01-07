
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct mount {int dummy; } ;
struct fuse_dispatcher {int dummy; } ;
struct fuse_data {int dummy; } ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_2__ {int p_pid; } ;


 int RECTIFY_TDCR (struct thread*,struct ucred*) ;
 void fdisp_make_pid (struct fuse_dispatcher*,int,struct fuse_data*,int ,int ,struct ucred*) ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;

void
fdisp_make(struct fuse_dispatcher *fdip, enum fuse_opcode op, struct mount *mp,
    uint64_t nid, struct thread *td, struct ucred *cred)
{
 struct fuse_data *data = fuse_get_mpdata(mp);
 RECTIFY_TDCR(td, cred);

 return fdisp_make_pid(fdip, op, data, nid, td->td_proc->p_pid, cred);
}
