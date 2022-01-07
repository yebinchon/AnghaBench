
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
typedef int off_t ;


 int g_handleattr (struct bio*,char const*,int *,int) ;

int
g_handleattr_off_t(struct bio *bp, const char *attribute, off_t val)
{

 return (g_handleattr(bp, attribute, &val, sizeof val));
}
