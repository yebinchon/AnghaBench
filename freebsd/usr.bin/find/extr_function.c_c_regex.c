
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int regex_t ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int * re_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int F_IGNCASE ;
 int LINE_MAX ;
 int REG_ICASE ;
 int err (int,int *) ;
 int errx (int,char*,char*,char*,char*) ;
 int * malloc (int) ;
 char* nextarg (TYPE_2__*,char***) ;
 TYPE_1__* palloc (TYPE_2__*) ;
 int regcomp (int *,char*,int) ;
 int regerror (int,int *,char*,int) ;
 int regexp_flags ;

PLAN *
c_regex(OPTION *option, char ***argvp)
{
 PLAN *new;
 char *pattern;
 regex_t *pre;
 int errcode;
 char errbuf[LINE_MAX];

 if ((pre = malloc(sizeof(regex_t))) == ((void*)0))
  err(1, ((void*)0));

 pattern = nextarg(option, argvp);

 if ((errcode = regcomp(pre, pattern,
     regexp_flags | (option->flags & F_IGNCASE ? REG_ICASE : 0))) != 0) {
  regerror(errcode, pre, errbuf, sizeof errbuf);
  errx(1, "%s: %s: %s",
       option->flags & F_IGNCASE ? "-iregex" : "-regex",
       pattern, errbuf);
 }

 new = palloc(option);
 new->re_data = pre;

 return new;
}
