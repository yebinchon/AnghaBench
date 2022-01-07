
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {int match; } ;


 int REFRESH_IN_PORCELAIN ;
 int REFRESH_QUIET ;
 int _ (char*) ;
 int die (int ,int ) ;
 int free (char*) ;
 int refresh_index (int *,int ,struct pathspec const*,char*,int ) ;
 int the_index ;
 char* xcalloc (int,int) ;

__attribute__((used)) static void refresh(int verbose, const struct pathspec *pathspec)
{
 char *seen;
 int i;

 seen = xcalloc(pathspec->nr, 1);
 refresh_index(&the_index, verbose ? REFRESH_IN_PORCELAIN : REFRESH_QUIET,
        pathspec, seen, _("Unstaged changes after refreshing the index:"));
 for (i = 0; i < pathspec->nr; i++) {
  if (!seen[i])
   die(_("pathspec '%s' did not match any files"),
       pathspec->items[i].match);
 }
 free(seen);
}
