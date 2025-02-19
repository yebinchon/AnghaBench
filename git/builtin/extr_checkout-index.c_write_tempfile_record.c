
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CHECKOUT_ALL ;
 size_t checkout_stage ;
 int fputs (scalar_t__*,int ) ;
 scalar_t__ nul_term_line ;
 int putchar (char) ;
 int stdout ;
 scalar_t__** topath ;
 int write_name_quoted_relative (char const*,char const*,int ,char) ;

__attribute__((used)) static void write_tempfile_record(const char *name, const char *prefix)
{
 int i;

 if (CHECKOUT_ALL == checkout_stage) {
  for (i = 1; i < 4; i++) {
   if (i > 1)
    putchar(' ');
   if (topath[i][0])
    fputs(topath[i], stdout);
   else
    putchar('.');
  }
 } else
  fputs(topath[checkout_stage], stdout);

 putchar('\t');
 write_name_quoted_relative(name, prefix, stdout,
       nul_term_line ? '\0' : '\n');

 for (i = 0; i < 4; i++) {
  topath[i][0] = 0;
 }
}
