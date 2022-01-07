
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 size_t argc_from_file0 ;
 char** argv_from_file0 ;
 int closefile (int *,char const*) ;
 int err (int,char*,...) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getdelim (char**,size_t*,char,int *) ;
 char** sort_realloc (char**,size_t) ;

__attribute__((used)) static void
read_fns_from_file0(const char *fn)
{
 FILE *f;
 char *line = ((void*)0);
 size_t linesize = 0;
 ssize_t linelen;

 if (fn == ((void*)0))
  return;

 f = fopen(fn, "r");
 if (f == ((void*)0))
  err(2, "%s", fn);

 while ((linelen = getdelim(&line, &linesize, '\0', f)) != -1) {
  if (*line != '\0') {
   if (argc_from_file0 == (size_t) - 1)
    argc_from_file0 = 0;
   ++argc_from_file0;
   argv_from_file0 = sort_realloc(argv_from_file0,
       argc_from_file0 * sizeof(char *));
   if (argv_from_file0 == ((void*)0))
    err(2, ((void*)0));
   argv_from_file0[argc_from_file0 - 1] = line;
  } else {
   free(line);
  }
  line = ((void*)0);
  linesize = 0;
 }
 if (ferror(f))
  err(2, "%s: getdelim", fn);

 closefile(f, fn);
}
