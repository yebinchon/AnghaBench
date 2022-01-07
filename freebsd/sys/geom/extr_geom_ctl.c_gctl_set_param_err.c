
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;





 int gctl_error (struct gctl_req*,char*,char const*) ;
 int gctl_set_param (struct gctl_req*,char const*,void const*,int) ;

void
gctl_set_param_err(struct gctl_req *req, const char *param, void const *ptr,
    int len)
{

 switch (gctl_set_param(req, param, ptr, len)) {
 case 128:
  gctl_error(req, "No write access %s argument", param);
  break;
 case 129:
  gctl_error(req, "Wrong length %s argument", param);
  break;
 case 130:
  gctl_error(req, "Missing %s argument", param);
  break;
 }
}
