
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req_arg {int flag; int len; int value; int kvalue; } ;
struct gctl_req {int nerror; int narg; struct gctl_req_arg* arg; } ;


 int GCTL_PARAM_CHANGED ;
 int copyout (int ,int ,int ) ;

__attribute__((used)) static void
gctl_copyout(struct gctl_req *req)
{
 int error, i;
 struct gctl_req_arg *ap;

 if (req->nerror)
  return;
 error = 0;
 ap = req->arg;
 for (i = 0; i < req->narg; i++, ap++) {
  if (!(ap->flag & GCTL_PARAM_CHANGED))
   continue;
  error = copyout(ap->kvalue, ap->value, ap->len);
  if (!error)
   continue;
  req->nerror = error;
  return;
 }
 return;
}
