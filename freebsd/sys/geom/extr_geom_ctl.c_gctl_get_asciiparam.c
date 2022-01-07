
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct gctl_req_arg {int flag; char* kvalue; int len; int name; } ;
struct gctl_req {size_t narg; struct gctl_req_arg* arg; } ;


 int GCTL_PARAM_RD ;
 int gctl_error (struct gctl_req*,char*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

char const *
gctl_get_asciiparam(struct gctl_req *req, const char *param)
{
 u_int i;
 char const *p;
 struct gctl_req_arg *ap;

 for (i = 0; i < req->narg; i++) {
  ap = &req->arg[i];
  if (strcmp(param, ap->name))
   continue;
  if (!(ap->flag & GCTL_PARAM_RD))
   continue;
  p = ap->kvalue;
  if (ap->len < 1) {
   gctl_error(req, "No length argument (%s)", param);
   return (((void*)0));
  }
  if (p[ap->len - 1] != '\0') {
   gctl_error(req, "Unterminated argument (%s)", param);
   return (((void*)0));
  }
  return (p);
 }
 return (((void*)0));
}
