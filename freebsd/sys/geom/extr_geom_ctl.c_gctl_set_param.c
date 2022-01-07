
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct gctl_req_arg {int flag; int len; int kvalue; int name; } ;
struct gctl_req {size_t narg; struct gctl_req_arg* arg; } ;


 int EINVAL ;
 int ENOSPC ;
 int EPERM ;
 int GCTL_PARAM_CHANGED ;
 int GCTL_PARAM_WR ;
 int bcopy (void const*,int ,int) ;
 scalar_t__ strcmp (char const*,int ) ;

int
gctl_set_param(struct gctl_req *req, const char *param, void const *ptr,
    int len)
{
 u_int i;
 struct gctl_req_arg *ap;

 for (i = 0; i < req->narg; i++) {
  ap = &req->arg[i];
  if (strcmp(param, ap->name))
   continue;
  if (!(ap->flag & GCTL_PARAM_WR))
   return (EPERM);
  ap->flag |= GCTL_PARAM_CHANGED;
  if (ap->len < len) {
   bcopy(ptr, ap->kvalue, ap->len);
   return (ENOSPC);
  }
  bcopy(ptr, ap->kvalue, len);
  return (0);
 }
 return (EINVAL);
}
