
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char com_char ;
 char esc_char ;
 scalar_t__ escaped ;
 int exit (int) ;
 int fclose (int *) ;
 char const* filename ;
 int * fopen (char const*,char*) ;
 int * input ;
 scalar_t__ instring ;
 int is_stdin ;
 int lineno ;
 int nextline ;
 int perror (char*) ;
 scalar_t__ tokidx ;
 scalar_t__ wideidx ;

void
reset_scanner(const char *fname)
{
 if (fname == ((void*)0)) {
  filename = "<stdin>";
  is_stdin = 1;
 } else {
  if (!is_stdin)
   (void) fclose(input);
  if ((input = fopen(fname, "r")) == ((void*)0)) {
   perror("fopen");
   exit(4);
  } else {
   is_stdin = 0;
  }
  filename = fname;
 }
 com_char = '#';
 esc_char = '\\';
 instring = 0;
 escaped = 0;
 lineno = 1;
 nextline = 1;
 tokidx = 0;
 wideidx = 0;
}
