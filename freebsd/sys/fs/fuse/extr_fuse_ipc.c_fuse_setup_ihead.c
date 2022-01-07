
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ucred {int * cr_groups; int cr_uid; } ;
struct fuse_ticket {int tk_unique; } ;
struct fuse_in_header {int len; int opcode; int gid; int uid; int pid; int nodeid; int unique; } ;
typedef int pid_t ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;



__attribute__((used)) static inline void
fuse_setup_ihead(struct fuse_in_header *ihead, struct fuse_ticket *ftick,
    uint64_t nid, enum fuse_opcode op, size_t blen, pid_t pid,
    struct ucred *cred)
{
 ihead->len = sizeof(*ihead) + blen;
 ihead->unique = ftick->tk_unique;
 ihead->nodeid = nid;
 ihead->opcode = op;

 ihead->pid = pid;
 ihead->uid = cred->cr_uid;
 ihead->gid = cred->cr_groups[0];
}
