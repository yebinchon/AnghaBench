
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int state; scalar_t__* str; } ;
typedef TYPE_1__ STR ;


 int EOS ;
 int isdigit (int) ;

__attribute__((used)) static int
backslash(STR *s, int *is_octal)
{
 int ch, cnt, val;

 if (is_octal != ((void*)0))
  *is_octal = 0;
 for (cnt = val = 0;;) {
  ch = (u_char)*++s->str;
  if (!isdigit(ch) || ch > '7')
   break;
  val = val * 8 + ch - '0';
  if (++cnt == 3) {
   ++s->str;
   break;
  }
 }
 if (cnt) {
  if (is_octal != ((void*)0))
   *is_octal = 1;
  return (val);
 }
 if (ch != '\0')
  ++s->str;
 switch (ch) {
  case 'a':
   return ('\7');
  case 'b':
   return ('\b');
  case 'f':
   return ('\f');
  case 'n':
   return ('\n');
  case 'r':
   return ('\r');
  case 't':
   return ('\t');
  case 'v':
   return ('\13');
  case '\0':
   s->state = EOS;
   return ('\\');
  default:
   return (ch);
 }
}
