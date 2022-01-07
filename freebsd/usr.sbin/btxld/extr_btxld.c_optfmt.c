
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int F_CNT ;
 int errx (int,char*,char const*) ;
 int * fmtlist ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static unsigned int
optfmt(const char *arg)
{
    unsigned int i;

    for (i = 0; i < F_CNT && strcmp(arg, fmtlist[i]); i++);
    if (i == F_CNT)
 errx(1, "%s: Unknown format", arg);
    return i;
}
