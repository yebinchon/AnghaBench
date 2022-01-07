
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct ucred {int dummy; } ;
struct fuse_dispatcher {int iosize; TYPE_1__* tick; int finh; int indata; } ;
struct fuse_data {int dummy; } ;
typedef int pid_t ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_4__ {int tk_ms_fiov; } ;


 int FUSE_DIMALLOC (int *,int ,int ,int ) ;
 int fticket_refresh (TYPE_1__*) ;
 int fuse_setup_ihead (int ,TYPE_1__*,int ,int,int ,int ,struct ucred*) ;
 TYPE_1__* fuse_ticket_fetch (struct fuse_data*) ;

__attribute__((used)) static void
fdisp_make_pid(struct fuse_dispatcher *fdip, enum fuse_opcode op,
    struct fuse_data *data, uint64_t nid, pid_t pid, struct ucred *cred)
{
 if (fdip->tick) {
  fticket_refresh(fdip->tick);
 } else {
  fdip->tick = fuse_ticket_fetch(data);
 }


 FUSE_DIMALLOC(&fdip->tick->tk_ms_fiov, fdip->finh,
     fdip->indata, fdip->iosize);

 fuse_setup_ihead(fdip->finh, fdip->tick, nid, op, fdip->iosize, pid, cred);
}
