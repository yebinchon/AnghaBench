
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ re_nsub; } ;
typedef TYPE_1__ regex_t ;


 int REG_ICASE ;
 int err (int,char*) ;
 int errx (int,char*,int ,int ,int ) ;
 int fname ;
 int linenum ;
 TYPE_1__* malloc (int) ;
 scalar_t__ maxnsub ;
 int regcomp (TYPE_1__*,char*,int) ;
 int rflags ;
 int strregerror (int,TYPE_1__*) ;

__attribute__((used)) static regex_t *
compile_re(char *re, int case_insensitive)
{
 regex_t *rep;
 int eval, flags;


 flags = rflags;
 if (case_insensitive)
  flags |= REG_ICASE;
 if ((rep = malloc(sizeof(regex_t))) == ((void*)0))
  err(1, "malloc");
 if ((eval = regcomp(rep, re, flags)) != 0)
  errx(1, "%lu: %s: RE error: %s",
    linenum, fname, strregerror(eval, rep));
 if (maxnsub < rep->re_nsub)
  maxnsub = rep->re_nsub;
 return (rep);
}
