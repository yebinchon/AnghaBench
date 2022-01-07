
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {struct file_header* si; int * fr; } ;


 int file_reader_free (int *) ;
 int sort_free (struct file_header*) ;
 int sort_list_item_clean (struct file_header*) ;

__attribute__((used)) static void
file_header_close(struct file_header **fh)
{

 if (fh && *fh) {
  if ((*fh)->fr) {
   file_reader_free((*fh)->fr);
   (*fh)->fr = ((void*)0);
  }
  if ((*fh)->si) {
   sort_list_item_clean((*fh)->si);
   sort_free((*fh)->si);
   (*fh)->si = ((void*)0);
  }
  sort_free(*fh);
  *fh = ((void*)0);
 }
}
