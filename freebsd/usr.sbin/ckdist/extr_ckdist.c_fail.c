
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t errno ;
 scalar_t__ opt_silent ;
 char const** sys_errlist ;
 int warnx (char*,char const*,char const*) ;

__attribute__((used)) static int
fail(const char *path, const char *msg)
{
    if (opt_silent)
 return 0;
    warnx("%s: %s", path, msg ? msg : sys_errlist[errno]);
    return 2;
}
