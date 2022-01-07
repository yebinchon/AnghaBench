
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct utmpx {TYPE_1__ ut_tv; } ;


 int order ;

__attribute__((used)) static int
utcmp_time(const void *u1, const void *u2)
{
 time_t t1, t2;

 t1 = ((const struct utmpx *)u1)->ut_tv.tv_sec;
 t2 = ((const struct utmpx *)u2)->ut_tv.tv_sec;
 return (t1 < t2 ? order : t1 > t2 ? -order : 0);
}
