
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {scalar_t__ oldlen; scalar_t__ oldidx; scalar_t__ oldptr; } ;


 int ENOMEM ;
 int bcopy (void const*,char*,size_t) ;

__attribute__((used)) static int
sysctl_old_kernel(struct sysctl_req *req, const void *p, size_t l)
{
 size_t i = 0;

 if (req->oldptr) {
  i = l;
  if (req->oldlen <= req->oldidx)
   i = 0;
  else
   if (i > req->oldlen - req->oldidx)
    i = req->oldlen - req->oldidx;
  if (i > 0)
   bcopy(p, (char *)req->oldptr + req->oldidx, i);
 }
 req->oldidx += l;
 if (req->oldptr && i != l)
  return (ENOMEM);
 return (0);
}
