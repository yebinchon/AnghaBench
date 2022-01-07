
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {size_t count; int tmp; int sz; int * fns; } ;


 int file_list_add (struct file_list*,char*,int) ;
 int file_list_clean (struct file_list*) ;
 int file_list_init (struct file_list*,int) ;
 size_t max_open_files ;
 int merge_files_array (size_t,int *,char*) ;
 char* new_tmp_file_name () ;
 int unlink (int ) ;

__attribute__((used)) static int
shrink_file_list(struct file_list *fl)
{

 if ((fl == ((void*)0)) || (size_t) (fl->count) < max_open_files)
  return (0);
 else {
  struct file_list new_fl;
  size_t indx = 0;

  file_list_init(&new_fl, 1);
  while (indx < fl->count) {
   char *fnew;
   size_t num;

   num = fl->count - indx;
   fnew = new_tmp_file_name();

   if ((size_t) num >= max_open_files)
    num = max_open_files - 1;
   merge_files_array(num, fl->fns + indx, fnew);
   if (fl->tmp) {
    size_t i;

    for (i = 0; i < num; i++)
     unlink(fl->fns[indx + i]);
   }
   file_list_add(&new_fl, fnew, 0);
   indx += num;
  }
  fl->tmp = 0;
  file_list_clean(fl);

  fl->count = new_fl.count;
  fl->fns = new_fl.fns;
  fl->sz = new_fl.sz;
  fl->tmp = new_fl.tmp;

  return (1);
 }
}
