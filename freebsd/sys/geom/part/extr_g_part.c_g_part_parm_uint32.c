
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct gctl_req {int dummy; } ;


 int EINVAL ;
 int ENOATTR ;
 scalar_t__ const INT_MAX ;
 int gctl_error (struct gctl_req*,char*,int,char const*,unsigned int) ;
 scalar_t__* gctl_get_param (struct gctl_req*,char const*,int*) ;

__attribute__((used)) static int
g_part_parm_uint32(struct gctl_req *req, const char *name, u_int *v)
{
 const uint32_t *p;
 int size;

 p = gctl_get_param(req, name, &size);
 if (p == ((void*)0))
  return (ENOATTR);
 if (size != sizeof(*p) || *p > INT_MAX) {
  gctl_error(req, "%d %s '%u'", EINVAL, name, (unsigned int)*p);
  return (EINVAL);
 }
 *v = (u_int)*p;
 return (0);
}
