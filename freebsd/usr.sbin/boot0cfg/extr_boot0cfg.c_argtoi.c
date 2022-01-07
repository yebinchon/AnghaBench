
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 int errx (int,char*,char const*,int) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int
argtoi(const char *arg, int lo, int hi, int opt)
{
    char *s;
    long x;

    errno = 0;
    x = strtol(arg, &s, 0);
    if (errno || !*arg || *s || x < lo || x > hi)
        errx(1, "%s: Bad argument to -%c option", arg, opt);
    return x;
}
