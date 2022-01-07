
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {size_t newlen; size_t newidx; scalar_t__ newptr; } ;


 int EINVAL ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int copyin (char const*,void*,size_t) ;

__attribute__((used)) static int
sysctl_new_user(struct sysctl_req *req, void *p, size_t l)
{
 int error;

 if (!req->newptr)
  return (0);
 if (req->newlen - req->newidx < l)
  return (EINVAL);
 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
     "sysctl_new_user()");
 error = copyin((const char *)req->newptr + req->newidx, p, l);
 req->newidx += l;
 return (error);
}
