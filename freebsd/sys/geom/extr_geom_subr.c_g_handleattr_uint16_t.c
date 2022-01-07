
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bio {int dummy; } ;


 int g_handleattr (struct bio*,char const*,int *,int) ;

int
g_handleattr_uint16_t(struct bio *bp, const char *attribute, uint16_t val)
{

 return (g_handleattr(bp, attribute, &val, sizeof val));
}
