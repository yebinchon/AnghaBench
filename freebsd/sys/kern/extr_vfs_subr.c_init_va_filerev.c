
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u_quad_t ;
struct bintime {long long frac; scalar_t__ sec; } ;


 int getbinuptime (struct bintime*) ;

u_quad_t
init_va_filerev(void)
{
 struct bintime bt;

 getbinuptime(&bt);
 return (((u_quad_t)bt.sec << 32LL) | (bt.frac >> 32LL));
}
