
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
struct sysctl_req {int flags; size_t oldlen; size_t validlen; size_t newlen; scalar_t__ lock; size_t oldidx; void* oldptr; scalar_t__ newidx; int newfunc; int oldfunc; void const* newptr; struct thread* td; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EAGAIN ;
 int ENOMEM ;
 scalar_t__ KTRPOINT (int ,int ) ;
 int KTR_SYSCTL ;
 int PAGE_SIZE ;
 int PRI_USER ;
 scalar_t__ REQ_UNWIRED ;
 scalar_t__ REQ_WIRED ;
 int TD_TO_VNET (struct thread*) ;
 int bzero (struct sysctl_req*,int) ;
 int copyin (size_t*,size_t*,int) ;
 int curthread ;
 int kern_yield (int ) ;
 int ktrsysctl (int*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int sysctl_new_user ;
 int sysctl_old_user ;
 int sysctl_root (int ,int*,int ,struct sysctl_req*) ;
 int sysctlmemlock ;
 int vsunlock (void*,size_t) ;

int
userland_sysctl(struct thread *td, int *name, u_int namelen, void *old,
    size_t *oldlenp, int inkernel, const void *new, size_t newlen,
    size_t *retval, int flags)
{
 int error = 0, memlocked;
 struct sysctl_req req;

 bzero(&req, sizeof req);

 req.td = td;
 req.flags = flags;

 if (oldlenp) {
  if (inkernel) {
   req.oldlen = *oldlenp;
  } else {
   error = copyin(oldlenp, &req.oldlen, sizeof(*oldlenp));
   if (error)
    return (error);
  }
 }
 req.validlen = req.oldlen;
 req.oldptr = old;

 if (new != ((void*)0)) {
  req.newlen = newlen;
  req.newptr = new;
 }

 req.oldfunc = sysctl_old_user;
 req.newfunc = sysctl_new_user;
 req.lock = REQ_UNWIRED;





 memlocked = 0;
 if (req.oldptr && req.oldlen > 4 * PAGE_SIZE) {
  memlocked = 1;
  sx_xlock(&sysctlmemlock);
 }
 CURVNET_SET(TD_TO_VNET(td));

 for (;;) {
  req.oldidx = 0;
  req.newidx = 0;
  error = sysctl_root(0, name, namelen, &req);
  if (error != EAGAIN)
   break;
  kern_yield(PRI_USER);
 }

 CURVNET_RESTORE();

 if (req.lock == REQ_WIRED && req.validlen > 0)
  vsunlock(req.oldptr, req.validlen);
 if (memlocked)
  sx_xunlock(&sysctlmemlock);

 if (error && error != ENOMEM)
  return (error);

 if (retval) {
  if (req.oldptr && req.oldidx > req.validlen)
   *retval = req.validlen;
  else
   *retval = req.oldidx;
 }
 return (error);
}
