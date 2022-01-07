
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {size_t newlen; size_t newidx; scalar_t__ newptr; } ;


 int EINVAL ;
 int bcopy (char const*,void*,size_t) ;

__attribute__((used)) static int
sysctl_new_kernel(struct sysctl_req *req, void *p, size_t l)
{
 if (!req->newptr)
  return (0);
 if (req->newlen - req->newidx < l)
  return (EINVAL);
 bcopy((const char *)req->newptr + req->newidx, p, l);
 req->newidx += l;
 return (0);
}
