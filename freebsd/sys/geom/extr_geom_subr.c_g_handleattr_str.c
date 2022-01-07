
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int g_handleattr (struct bio*,char const*,char const*,int ) ;

int
g_handleattr_str(struct bio *bp, const char *attribute, const char *str)
{

 return (g_handleattr(bp, attribute, str, 0));
}
