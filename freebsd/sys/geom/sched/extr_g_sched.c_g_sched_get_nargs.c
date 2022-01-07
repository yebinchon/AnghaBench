
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int gctl_error (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;

__attribute__((used)) static int
g_sched_get_nargs(struct gctl_req *req)
{
 int *nargs;

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No 'nargs' argument");
  return (0);
 }
 if (*nargs <= 0)
  gctl_error(req, "Missing device(s).");
 return (*nargs);
}
