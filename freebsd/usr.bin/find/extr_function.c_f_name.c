
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef int fn ;
struct TYPE_6__ {scalar_t__ fts_info; char* fts_name; int fts_accpath; } ;
struct TYPE_5__ {int flags; int c_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ FTSENT ;


 int FNM_CASEFOLD ;
 scalar_t__ FTS_NSOK ;
 scalar_t__ FTS_SL ;
 scalar_t__ FTS_SLNONE ;
 int F_IGNCASE ;
 int F_LINK ;
 int PATH_MAX ;
 int fnmatch (int ,char const*,int ) ;
 int readlink (int ,char*,int) ;

int
f_name(PLAN *plan, FTSENT *entry)
{
 char fn[PATH_MAX];
 const char *name;
 ssize_t len;

 if (plan->flags & F_LINK) {







  if (entry->fts_info != FTS_NSOK && entry->fts_info != FTS_SL &&
      entry->fts_info != FTS_SLNONE)
   return 0;
  len = readlink(entry->fts_accpath, fn, sizeof(fn) - 1);
  if (len == -1)
   return 0;
  fn[len] = '\0';
  name = fn;
 } else
  name = entry->fts_name;
 return !fnmatch(plan->c_data, name,
     plan->flags & F_IGNCASE ? FNM_CASEFOLD : 0);
}
