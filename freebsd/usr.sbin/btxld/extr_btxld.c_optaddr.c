
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;


 unsigned long MAXU32 ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 unsigned long strtoul (char const*,char**,int ) ;

__attribute__((used)) static uint32_t
optaddr(const char *arg)
{
    char *s;
    unsigned long x;

    errno = 0;
    x = strtoul(arg, &s, 0);
    if (errno || !*arg || *s || x > MAXU32)
 errx(1, "%s: Illegal address", arg);
    return x;
}
