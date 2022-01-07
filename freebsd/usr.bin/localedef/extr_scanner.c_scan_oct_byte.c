
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isodigit (int) ;
 int scanc () ;
 int unscanc (int) ;
 int yyerror (char*) ;

__attribute__((used)) static int
scan_oct_byte(void)
{
 int c1, c2, c3;
 int b;

 b = 0;

 c1 = scanc();
 if (!isodigit(c1)) {
  yyerror("malformed octal digit");
  return (0);
 }
 b = c1 - '0';
 c2 = scanc();
 if (!isodigit(c2)) {
  yyerror("malformed octal digit");
  return (0);
 }
 b *= 8;
 b += (c2 - '0');
 c3 = scanc();
 if (!isodigit(c3)) {
  unscanc(c3);
 } else {
  b *= 8;
  b += (c3 - '0');
 }
 return (b);
}
