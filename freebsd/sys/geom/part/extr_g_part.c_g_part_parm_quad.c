
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
typedef scalar_t__ quad_t ;


 int EINVAL ;
 int ENOATTR ;
 int gctl_error (struct gctl_req*,char*,int,char const*,char const*) ;
 char* gctl_get_asciiparam (struct gctl_req*,char const*) ;
 scalar_t__ strtoq (char const*,char**,int ) ;

__attribute__((used)) static int
g_part_parm_quad(struct gctl_req *req, const char *name, quad_t *v)
{
 const char *p;
 char *x;
 quad_t q;

 p = gctl_get_asciiparam(req, name);
 if (p == ((void*)0))
  return (ENOATTR);
 q = strtoq(p, &x, 0);
 if (*x != '\0' || q < 0) {
  gctl_error(req, "%d %s '%s'", EINVAL, name, p);
  return (EINVAL);
 }
 *v = q;
 return (0);
}
