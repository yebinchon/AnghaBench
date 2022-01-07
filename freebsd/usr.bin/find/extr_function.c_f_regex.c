
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;
struct TYPE_9__ {char* fts_path; } ;
struct TYPE_8__ {int flags; int * re_data; } ;
typedef TYPE_2__ PLAN ;
typedef TYPE_3__ FTSENT ;


 int F_IGNCASE ;
 int LINE_MAX ;
 int REG_NOMATCH ;
 int REG_STARTEND ;
 int errx (int,char*,char*,char*) ;
 int regerror (int,int *,char*,int) ;
 int regexec (int *,char*,int,TYPE_1__*,int ) ;
 int strlen (char*) ;

int
f_regex(PLAN *plan, FTSENT *entry)
{
 char *str;
 int len;
 regex_t *pre;
 regmatch_t pmatch;
 int errcode;
 char errbuf[LINE_MAX];
 int matched;

 pre = plan->re_data;
 str = entry->fts_path;
 len = strlen(str);
 matched = 0;

 pmatch.rm_so = 0;
 pmatch.rm_eo = len;

 errcode = regexec(pre, str, 1, &pmatch, REG_STARTEND);

 if (errcode != 0 && errcode != REG_NOMATCH) {
  regerror(errcode, pre, errbuf, sizeof errbuf);
  errx(1, "%s: %s",
       plan->flags & F_IGNCASE ? "-iregex" : "-regex", errbuf);
 }

 if (errcode == 0 && pmatch.rm_so == 0 && pmatch.rm_eo == len)
  matched = 1;

 return matched;
}
