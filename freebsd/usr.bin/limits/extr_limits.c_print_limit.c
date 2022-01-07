
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int rlim_t ;
typedef int numbr ;
typedef int intmax_t ;


 unsigned int RLIM_INFINITY ;
 int printf (char const*,char const*,...) ;
 int sprintf (char*,char*,int ) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void
print_limit(rlim_t limit, unsigned divisor, const char * inf, const char * pfx, const char * sfx, const char * which)
{
    char numbr[64];

    if (limit == RLIM_INFINITY)
 strlcpy(numbr, inf, sizeof(numbr));
    else
 sprintf(numbr, "%jd", (intmax_t)((limit + divisor/2) / divisor));
    printf(pfx, which, numbr);
    printf(sfx, which);

}
