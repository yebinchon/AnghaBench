
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {size_t file_pos; int * si; int * fr; } ;
struct bwstring {int dummy; } ;


 int err (int,char*,int ) ;
 int file_reader_free (int *) ;
 int * file_reader_init (char const*) ;
 struct bwstring* file_reader_readline (int *) ;
 int getstr (int) ;
 int perror (char const*) ;
 int * sort_list_item_alloc () ;
 int sort_list_item_set (int *,struct bwstring*) ;
 struct file_header* sort_malloc (int) ;

__attribute__((used)) static void
file_header_init(struct file_header **fh, const char *fn, size_t file_pos)
{

 if (fh && fn) {
  struct bwstring *line;

  *fh = sort_malloc(sizeof(struct file_header));
  (*fh)->file_pos = file_pos;
  (*fh)->fr = file_reader_init(fn);
  if ((*fh)->fr == ((void*)0)) {
   perror(fn);
   err(2, "%s", getstr(8));
  }
  line = file_reader_readline((*fh)->fr);
  if (line == ((void*)0)) {
   file_reader_free((*fh)->fr);
   (*fh)->fr = ((void*)0);
   (*fh)->si = ((void*)0);
  } else {
   (*fh)->si = sort_list_item_alloc();
   sort_list_item_set((*fh)->si, line);
  }
 }
}
