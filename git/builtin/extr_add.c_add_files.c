
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dir_struct {int ignored_nr; int nr; TYPE_2__** entries; TYPE_1__** ignored; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {char* name; } ;


 char* _ (char*) ;
 scalar_t__ add_file_to_index (int *,int ,int) ;
 int check_embedded_repo (int ) ;
 int die (char*) ;
 int fprintf (int ,char*,...) ;
 int ignore_add_errors ;
 char* ignore_error ;
 int stderr ;
 int the_index ;

__attribute__((used)) static int add_files(struct dir_struct *dir, int flags)
{
 int i, exit_status = 0;

 if (dir->ignored_nr) {
  fprintf(stderr, _(ignore_error));
  for (i = 0; i < dir->ignored_nr; i++)
   fprintf(stderr, "%s\n", dir->ignored[i]->name);
  fprintf(stderr, _("Use -f if you really want to add them.\n"));
  exit_status = 1;
 }

 for (i = 0; i < dir->nr; i++) {
  if (add_file_to_index(&the_index, dir->entries[i]->name, flags)) {
   if (!ignore_add_errors)
    die(_("adding files failed"));
   exit_status = 1;
  } else {
   check_embedded_repo(dir->entries[i]->name);
  }
 }
 return exit_status;
}
