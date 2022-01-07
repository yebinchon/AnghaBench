
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_2__ {int ce_mode; } ;


 struct strbuf STRBUF_INIT ;
 char* SUBMODULE_WITH_GITDIR ;
 int S_ISGITLINK (int ) ;
 int _ (char*) ;
 TYPE_1__** active_cache ;
 int die (int ,...) ;
 int is_staging_gitmodules_ok (int *) ;
 char* read_gitfile (int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int the_index ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void prepare_move_submodule(const char *src, int first,
       const char **submodule_gitfile)
{
 struct strbuf submodule_dotgit = STRBUF_INIT;
 if (!S_ISGITLINK(active_cache[first]->ce_mode))
  die(_("Directory %s is in index and no submodule?"), src);
 if (!is_staging_gitmodules_ok(&the_index))
  die(_("Please stage your changes to .gitmodules or stash them to proceed"));
 strbuf_addf(&submodule_dotgit, "%s/.git", src);
 *submodule_gitfile = read_gitfile(submodule_dotgit.buf);
 if (*submodule_gitfile)
  *submodule_gitfile = xstrdup(*submodule_gitfile);
 else
  *submodule_gitfile = SUBMODULE_WITH_GITDIR;
 strbuf_release(&submodule_dotgit);
}
