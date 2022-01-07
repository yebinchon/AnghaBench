
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int fts_level; int fts_info; int fts_errno; int fts_path; } ;
struct TYPE_8__ {struct TYPE_8__* next; scalar_t__ (* execute ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ FTSENT ;


 int BADCH ;
 int ENOENT ;





 int FTS_SKIP ;

 int FTS_WHITEOUT ;
 int err (int,char*,...) ;
 int errc (int,int,char*) ;
 int errno ;
 int exitstatus ;
 int fflush (int ) ;
 int * find_compare ;
 int finish_execplus () ;
 int * fts_open (char**,int,int *) ;
 TYPE_2__* fts_read (int *) ;
 scalar_t__ fts_set (int *,TYPE_2__*,int ) ;
 int ftsoptions ;
 scalar_t__ ignore_readdir_race ;
 int isdepth ;
 scalar_t__ issort ;
 scalar_t__ isxargs ;
 int maxdepth ;
 int mindepth ;
 int stdout ;
 int strerror (int) ;
 scalar_t__ strpbrk (int ,int ) ;
 scalar_t__ stub1 (TYPE_1__*,TYPE_2__*) ;
 int * tree ;
 int warnx (char*,int ,...) ;

int
find_execute(PLAN *plan, char *paths[])
{
 FTSENT *entry;
 PLAN *p;
 int e;

 tree = fts_open(paths, ftsoptions, (issort ? find_compare : ((void*)0)));
 if (tree == ((void*)0))
  err(1, "ftsopen");

 exitstatus = 0;
 while (errno = 0, (entry = fts_read(tree)) != ((void*)0)) {
  if (maxdepth != -1 && entry->fts_level >= maxdepth) {
   if (fts_set(tree, entry, FTS_SKIP))
    err(1, "%s", entry->fts_path);
  }

  switch (entry->fts_info) {
  case 133:
   if (isdepth)
    continue;
   break;
  case 131:
   if (!isdepth)
    continue;
   break;
  case 132:
  case 129:
   if (ignore_readdir_race &&
       entry->fts_errno == ENOENT && entry->fts_level > 0)
    continue;

  case 130:
   (void)fflush(stdout);
   warnx("%s: %s",
       entry->fts_path, strerror(entry->fts_errno));
   exitstatus = 1;
   continue;






  }

  if (isxargs && strpbrk(entry->fts_path, " \t\n\\'\"")) {
   (void)fflush(stdout);
   warnx("%s: illegal path", entry->fts_path);
   exitstatus = 1;
   continue;
  }

  if (mindepth != -1 && entry->fts_level < mindepth)
   continue;






  for (p = plan; p && (p->execute)(p, entry); p = p->next);
 }
 e = errno;
 finish_execplus();
 if (e && (!ignore_readdir_race || e != ENOENT))
  errc(1, e, "fts_read");
 return (exitstatus);
}
