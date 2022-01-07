
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {size_t oldidx; scalar_t__ lock; size_t validlen; int * oldptr; } ;


 int ENOMEM ;
 scalar_t__ REQ_WIRED ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int copyout (void const*,char*,size_t) ;
 int copyout_nofault (void const*,char*,size_t) ;

__attribute__((used)) static int
sysctl_old_user(struct sysctl_req *req, const void *p, size_t l)
{
 size_t i, len, origidx;
 int error;

 origidx = req->oldidx;
 req->oldidx += l;
 if (req->oldptr == ((void*)0))
  return (0);





 if (req->lock != REQ_WIRED)
  WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
      "sysctl_old_user()");
 i = l;
 len = req->validlen;
 if (len <= origidx)
  i = 0;
 else {
  if (i > len - origidx)
   i = len - origidx;
  if (req->lock == REQ_WIRED) {
   error = copyout_nofault(p, (char *)req->oldptr +
       origidx, i);
  } else
   error = copyout(p, (char *)req->oldptr + origidx, i);
  if (error != 0)
   return (error);
 }
 if (i < l)
  return (ENOMEM);
 return (0);
}
