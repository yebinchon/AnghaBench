
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int EINVAL ;
 int ENOATTR ;
 int gctl_error (struct gctl_req*,char*,int,char const*,char const*) ;
 char* gctl_get_asciiparam (struct gctl_req*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
g_part_parm_str(struct gctl_req *req, const char *name, const char **v)
{
 const char *p;

 p = gctl_get_asciiparam(req, name);
 if (p == ((void*)0))
  return (ENOATTR);

 if (strcmp(name, "label") != 0 && p[0] == '\0') {
  gctl_error(req, "%d %s '%s'", EINVAL, name, p);
  return (EINVAL);
 }
 *v = p;
 return (0);
}
