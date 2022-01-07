
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int dummy; } ;


 int EINVAL ;
 int g_io_getattr (char const*,struct g_consumer*,int*,void*) ;

int
g_getattr__(const char *attr, struct g_consumer *cp, void *var, int len)
{
 int error, i;

 i = len;
 error = g_io_getattr(attr, cp, &i, var);
 if (error)
  return (error);
 if (i != len)
  return (EINVAL);
 return (0);
}
