
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {int dummy; } ;
typedef int FILE ;


 int closefile (int *,char const*) ;
 int err (int,int *) ;
 int file_header_close (struct file_header**) ;
 int file_header_init (struct file_header**,char const*,size_t) ;
 int file_headers_merge (size_t,struct file_header**,int *) ;
 int * openfile (char const*,char*) ;
 int sort_free (struct file_header**) ;
 struct file_header** sort_malloc (size_t) ;

__attribute__((used)) static void
merge_files_array(size_t argc, const char **argv, const char *fn_out)
{

 if (argv && fn_out) {
  struct file_header **fh;
  FILE *f_out;
  size_t i;

  f_out = openfile(fn_out, "w");

  if (f_out == ((void*)0))
   err(2, ((void*)0));

  fh = sort_malloc((argc + 1) * sizeof(struct file_header *));

  for (i = 0; i < argc; i++)
   file_header_init(fh + i, argv[i], (size_t) i);

  file_headers_merge(argc, fh, f_out);

  for (i = 0; i < argc; i++)
   file_header_close(fh + i);

  sort_free(fh);

  closefile(f_out, fn_out);
 }
}
