
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_dispatcher {scalar_t__ iosize; TYPE_1__* tick; int finh; int indata; } ;
typedef int pid_t ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {TYPE_4__ tk_ms_fiov; } ;


 int FUSE_DIMALLOC (TYPE_4__*,int ,int ,scalar_t__) ;
 int MPASS (TYPE_1__*) ;
 int MPASS2 (int,char*) ;
 int fticket_reset (TYPE_1__*) ;
 int fuse_setup_ihead (int ,TYPE_1__*,int ,int,scalar_t__,int ,struct ucred*) ;

__attribute__((used)) static void
fdisp_refresh_pid(struct fuse_dispatcher *fdip, enum fuse_opcode op,
    struct mount *mp, uint64_t nid, pid_t pid, struct ucred *cred)
{
 MPASS(fdip->tick);
 MPASS2(sizeof(fdip->finh) + fdip->iosize <= fdip->tick->tk_ms_fiov.len,
  "Must use fdisp_make_pid to increase the size of the fiov");
 fticket_reset(fdip->tick);

 FUSE_DIMALLOC(&fdip->tick->tk_ms_fiov, fdip->finh,
     fdip->indata, fdip->iosize);

 fuse_setup_ihead(fdip->finh, fdip->tick, nid, op, fdip->iosize, pid,
  cred);
}
