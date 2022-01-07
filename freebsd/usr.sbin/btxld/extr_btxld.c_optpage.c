
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int
optpage(const char *arg, int hi)
{
    char *s;
    long x;

    errno = 0;
    x = strtol(arg, &s, 0);
    if (errno || !*arg || *s || x < 0 || x > hi)
 errx(1, "%s: Illegal page number", arg);
    return x;
}
