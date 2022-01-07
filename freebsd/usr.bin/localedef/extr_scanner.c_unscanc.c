
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input ;
 scalar_t__ is_stdin ;
 int nextline ;
 int stdin ;
 scalar_t__ ungetc (int,int ) ;
 int yyerror (char*) ;

__attribute__((used)) static void
unscanc(int c)
{
 if (c == '\n') {
  nextline--;
 }
 if (ungetc(c, is_stdin ? stdin : input) < 0) {
  yyerror("ungetc failed");
 }
}
