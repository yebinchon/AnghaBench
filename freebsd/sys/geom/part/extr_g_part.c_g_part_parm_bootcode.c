
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int ENOATTR ;
 void* gctl_get_param (struct gctl_req*,char const*,int*) ;

__attribute__((used)) static int
g_part_parm_bootcode(struct gctl_req *req, const char *name, const void **v,
    unsigned int *s)
{
 const void *p;
 int size;

 p = gctl_get_param(req, name, &size);
 if (p == ((void*)0))
  return (ENOATTR);
 *v = p;
 *s = size;
 return (0);
}
