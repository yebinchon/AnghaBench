
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (int) ;
 int scanc () ;
 int unscanc (int) ;
 int yyerror (char*) ;

__attribute__((used)) static int
scan_dec_byte(void)
{
 int c1, c2, c3;
 int b;

 c1 = scanc();
 if (!isdigit(c1)) {
  yyerror("malformed decimal digit");
  return (0);
 }
 b = c1 - '0';
 c2 = scanc();
 if (!isdigit(c2)) {
  yyerror("malformed decimal digit");
  return (0);
 }
 b *= 10;
 b += (c2 - '0');
 c3 = scanc();
 if (!isdigit(c3)) {
  unscanc(c3);
 } else {
  b *= 10;
  b += (c3 - '0');
 }
 return (b);
}
