
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {int fns; int count; } ;


 int merge_files_array (int ,int ,char const*) ;
 scalar_t__ shrink_file_list (struct file_list*) ;

void
merge_files(struct file_list *fl, const char *fn_out)
{

 if (fl && fn_out) {
  while (shrink_file_list(fl));

  merge_files_array(fl->count, fl->fns, fn_out);
 }
}
