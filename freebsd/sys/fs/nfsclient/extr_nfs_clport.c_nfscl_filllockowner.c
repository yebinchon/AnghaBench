
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct proc {TYPE_2__* p_stats; int p_pid; } ;
typedef int id ;
struct TYPE_3__ {int tv_usec; int tv_sec; } ;
struct TYPE_4__ {TYPE_1__ p_start; } ;


 int F_FLOCK ;
 int F_POSIX ;
 scalar_t__ NFSV4CL_LOCKNAMELEN ;
 int bcopy (void**,int *,int) ;
 int bzero (int *,scalar_t__) ;
 int printf (char*) ;

void
nfscl_filllockowner(void *id, u_int8_t *cp, int flags)
{
 union {
  u_int32_t lval;
  u_int8_t cval[4];
 } tl;
 struct proc *p;

 if (id == ((void*)0)) {

  bzero(cp, NFSV4CL_LOCKNAMELEN);
  return;
 }
 if ((flags & F_POSIX) != 0) {
  p = (struct proc *)id;
  tl.lval = p->p_pid;
  *cp++ = tl.cval[0];
  *cp++ = tl.cval[1];
  *cp++ = tl.cval[2];
  *cp++ = tl.cval[3];
  tl.lval = p->p_stats->p_start.tv_sec;
  *cp++ = tl.cval[0];
  *cp++ = tl.cval[1];
  *cp++ = tl.cval[2];
  *cp++ = tl.cval[3];
  tl.lval = p->p_stats->p_start.tv_usec;
  *cp++ = tl.cval[0];
  *cp++ = tl.cval[1];
  *cp++ = tl.cval[2];
  *cp = tl.cval[3];
 } else if ((flags & F_FLOCK) != 0) {
  bcopy(&id, cp, sizeof(id));
  bzero(&cp[sizeof(id)], NFSV4CL_LOCKNAMELEN - sizeof(id));
 } else {
  printf("nfscl_filllockowner: not F_POSIX or F_FLOCK\n");
  bzero(cp, NFSV4CL_LOCKNAMELEN);
 }
}
