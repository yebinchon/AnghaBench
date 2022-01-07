
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_long ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;


 int printf (char*,...) ;

void
pcrc(char *fn, uint32_t val, off_t len)
{
 (void)printf("%lu %jd", (u_long)val, (intmax_t)len);
 if (fn != ((void*)0))
  (void)printf(" %s", fn);
 (void)printf("\n");
}
