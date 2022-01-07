
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct progress {int dummy; } ;


 int _ (char*) ;
 int display_progress (struct progress*,int) ;
 int for_each_loose_file_in_objdir (char const*,int ,int ,int ,struct progress*) ;
 int fprintf_ln (int ,int ) ;
 int fsck_cruft ;
 int fsck_loose ;
 int fsck_subdir ;
 scalar_t__ show_progress ;
 struct progress* start_progress (int ,int) ;
 int stderr ;
 int stop_progress (struct progress**) ;
 scalar_t__ verbose ;

__attribute__((used)) static void fsck_object_dir(const char *path)
{
 struct progress *progress = ((void*)0);

 if (verbose)
  fprintf_ln(stderr, _("Checking object directory"));

 if (show_progress)
  progress = start_progress(_("Checking object directories"), 256);

 for_each_loose_file_in_objdir(path, fsck_loose, fsck_cruft, fsck_subdir,
          progress);
 display_progress(progress, 256);
 stop_progress(&progress);
}
