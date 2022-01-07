
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int gctl_error (struct gctl_req*,char*,char const*) ;
 void* gctl_get_paraml_opt (struct gctl_req*,char const*,int) ;

void *
gctl_get_paraml(struct gctl_req *req, const char *param, int len)
{
 void *p;

 p = gctl_get_paraml_opt(req, param, len);
 if (p == ((void*)0))
  gctl_error(req, "Missing %s argument", param);
 return (p);
}
