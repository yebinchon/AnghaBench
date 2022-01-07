
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list {scalar_t__ memsize; } ;
struct file_reader {int dummy; } ;
struct file_list {int dummy; } ;
struct bwstring {int dummy; } ;


 scalar_t__ available_free_memory ;
 int err (int,int *) ;
 int file_list_add (struct file_list*,char*,int) ;
 int file_reader_free (struct file_reader*) ;
 struct file_reader* file_reader_init (char const*) ;
 struct bwstring* file_reader_readline (struct file_reader*) ;
 char* new_tmp_file_name () ;
 int sort_list_add (struct sort_list*,struct bwstring*) ;
 int sort_list_clean (struct sort_list*) ;
 int sort_list_to_file (struct sort_list*,char*) ;

int
procfile(const char *fsrc, struct sort_list *list, struct file_list *fl)
{
 struct file_reader *fr;

 fr = file_reader_init(fsrc);
 if (fr == ((void*)0))
  err(2, ((void*)0));


 for (;;) {
  struct bwstring *bws;

  bws = file_reader_readline(fr);

  if (bws == ((void*)0))
   break;

  sort_list_add(list, bws);

  if (list->memsize >= available_free_memory) {
   char *fn;

   fn = new_tmp_file_name();
   sort_list_to_file(list, fn);
   file_list_add(fl, fn, 0);
   sort_list_clean(list);
  }
 }

 file_reader_free(fr);

 return (0);
}
