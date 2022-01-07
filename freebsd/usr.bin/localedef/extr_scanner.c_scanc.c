
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getc (int ) ;
 int input ;
 scalar_t__ is_stdin ;
 int lineno ;
 int nextline ;
 int stdin ;

__attribute__((used)) static int
scanc(void)
{
 int c;

 if (is_stdin)
  c = getc(stdin);
 else
  c = getc(input);
 lineno = nextline;
 if (c == '\n') {
  nextline++;
 }
 return (c);
}
