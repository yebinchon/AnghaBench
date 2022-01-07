
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex (int) ;
 int isxdigit (int) ;
 int scanc () ;
 int yyerror (char*) ;

__attribute__((used)) static int
scan_hex_byte(void)
{
 int c1, c2;
 int v;

 c1 = scanc();
 if (!isxdigit(c1)) {
  yyerror("malformed hex digit");
  return (0);
 }
 c2 = scanc();
 if (!isxdigit(c2)) {
  yyerror("malformed hex digit");
  return (0);
 }
 v = ((hex(c1) << 4) | hex(c2));
 return (v);
}
