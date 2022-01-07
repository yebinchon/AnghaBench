
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pathspec {int dummy; } ;
struct grep_opt {scalar_t__ status_only; TYPE_1__* repo; } ;
struct dir_struct {int nr; TYPE_2__** entries; int flags; } ;
typedef int dir ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int index; } ;


 int DIR_NO_GITLINKS ;
 int dir_path_match (int ,TYPE_2__*,struct pathspec const*,int ,int *) ;
 int fill_directory (struct dir_struct*,int ,struct pathspec const*) ;
 int grep_file (struct grep_opt*,int ) ;
 int memset (struct dir_struct*,int ,int) ;
 int setup_standard_excludes (struct dir_struct*) ;

__attribute__((used)) static int grep_directory(struct grep_opt *opt, const struct pathspec *pathspec,
     int exc_std, int use_index)
{
 struct dir_struct dir;
 int i, hit = 0;

 memset(&dir, 0, sizeof(dir));
 if (!use_index)
  dir.flags |= DIR_NO_GITLINKS;
 if (exc_std)
  setup_standard_excludes(&dir);

 fill_directory(&dir, opt->repo->index, pathspec);
 for (i = 0; i < dir.nr; i++) {
  if (!dir_path_match(opt->repo->index, dir.entries[i], pathspec, 0, ((void*)0)))
   continue;
  hit |= grep_file(opt, dir.entries[i]->name);
  if (hit && opt->status_only)
   break;
 }
 return hit;
}
