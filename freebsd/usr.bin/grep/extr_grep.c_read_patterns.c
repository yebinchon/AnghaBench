
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int ssize_t ;
typedef int FILE ;


 scalar_t__ S_ISDIR (int ) ;
 int add_pattern (char*,size_t) ;
 int err (int,char*,char const*) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int fstat (int ,struct stat*) ;
 int getline (char**,size_t*,int *) ;
 int * stdin ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
read_patterns(const char *fn)
{
 struct stat st;
 FILE *f;
 char *line;
 size_t len;
 ssize_t rlen;

 if (strcmp(fn, "-") == 0)
  f = stdin;
 else if ((f = fopen(fn, "r")) == ((void*)0))
  err(2, "%s", fn);
 if ((fstat(fileno(f), &st) == -1) || (S_ISDIR(st.st_mode))) {
  fclose(f);
  return;
 }
 len = 0;
 line = ((void*)0);
 while ((rlen = getline(&line, &len, f)) != -1) {
  if (line[0] == '\0')
   continue;
  add_pattern(line, line[0] == '\n' ? 0 : (size_t)rlen);
 }

 free(line);
 if (ferror(f))
  err(2, "%s", fn);
 if (strcmp(fn, "-") != 0)
  fclose(f);
}
