
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_6__ {TYPE_1__* items; } ;
struct rev_info {int diffopt; TYPE_3__ prune_data; } ;
struct object_array_entry {char const* path; TYPE_2__* item; int mode; } ;
struct TYPE_5__ {int oid; } ;
struct TYPE_4__ {char* match; } ;


 int GUARD_PATHSPEC (TYPE_3__*,int) ;
 int PATHSPEC_FROMTOP ;
 int PATHSPEC_LITERAL ;
 int S_IFINVALID ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int _ (char*) ;
 int builtin_diff_usage ;
 int canon_mode (int ) ;
 int die (int ,char const*) ;
 int die_errno (int ,char const*) ;
 int diff_flush (int *) ;
 int diff_set_mnemonic_prefix (int *,char*,char*) ;
 int diffcore_std (int *) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int null_oid ;
 int stuff_change (int *,int ,int ,int *,int *,int,int ,char const*,char const*) ;
 int usage (int ) ;

__attribute__((used)) static int builtin_diff_b_f(struct rev_info *revs,
       int argc, const char **argv,
       struct object_array_entry **blob)
{

 struct stat st;
 const char *path;

 if (argc > 1)
  usage(builtin_diff_usage);

 GUARD_PATHSPEC(&revs->prune_data, PATHSPEC_FROMTOP | PATHSPEC_LITERAL);
 path = revs->prune_data.items[0].match;

 if (lstat(path, &st))
  die_errno(_("failed to stat '%s'"), path);
 if (!(S_ISREG(st.st_mode) || S_ISLNK(st.st_mode)))
  die(_("'%s': not a regular file or symlink"), path);

 diff_set_mnemonic_prefix(&revs->diffopt, "o/", "w/");

 if (blob[0]->mode == S_IFINVALID)
  blob[0]->mode = canon_mode(st.st_mode);

 stuff_change(&revs->diffopt,
       blob[0]->mode, canon_mode(st.st_mode),
       &blob[0]->item->oid, &null_oid,
       1, 0,
       blob[0]->path ? blob[0]->path : path,
       path);
 diffcore_std(&revs->diffopt);
 diff_flush(&revs->diffopt);
 return 0;
}
