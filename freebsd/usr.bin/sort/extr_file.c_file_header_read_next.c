
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {int * si; int * fr; } ;
struct bwstring {int dummy; } ;


 int file_reader_free (int *) ;
 struct bwstring* file_reader_readline (int *) ;
 int sort_free (int *) ;
 int * sort_list_item_alloc () ;
 int sort_list_item_clean (int *) ;
 int sort_list_item_set (int *,struct bwstring*) ;

__attribute__((used)) static void
file_header_read_next(struct file_header *fh)
{

 if (fh && fh->fr) {
  struct bwstring *tmp;

  tmp = file_reader_readline(fh->fr);
  if (tmp == ((void*)0)) {
   file_reader_free(fh->fr);
   fh->fr = ((void*)0);
   if (fh->si) {
    sort_list_item_clean(fh->si);
    sort_free(fh->si);
    fh->si = ((void*)0);
   }
  } else {
   if (fh->si == ((void*)0))
    fh->si = sort_list_item_alloc();
   sort_list_item_set(fh->si, tmp);
  }
 }
}
