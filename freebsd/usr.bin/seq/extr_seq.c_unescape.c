
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISODIGIT (unsigned char) ;
 int isdigit (unsigned char) ;
 int isxdigit (unsigned char) ;
 int toupper (unsigned char) ;

__attribute__((used)) static char *
unescape(char *orig)
{
 char c, *cp, *new = orig;
 int i;

 for (cp = orig; (*orig = *cp); cp++, orig++) {
  if (*cp != '\\')
   continue;

  switch (*++cp) {
  case 'a':
   *orig = '\a';
   continue;
  case 'b':
   *orig = '\b';
   continue;
  case 'e':
   *orig = '\e';
   continue;
  case 'f':
   *orig = '\f';
   continue;
  case 'n':
   *orig = '\n';
   continue;
  case 'r':
   *orig = '\r';
   continue;
  case 't':
   *orig = '\t';
   continue;
  case 'v':
   *orig = '\v';
   continue;
  case '\\':
   *orig = '\\';
   continue;
  case '\'':
   *orig = '\'';
   continue;
  case '\"':
   *orig = '"';
   continue;
  case '0':
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
   for (i = 0, c = 0;
        ISODIGIT((unsigned char)*cp) && i < 3;
        i++, cp++) {
    c <<= 3;
    c |= (*cp - '0');
   }
   *orig = c;
   --cp;
   continue;
  case 'x':
   cp++;
   for (i = 0, c = 0;
        isxdigit((unsigned char)*cp) && i < 2;
        i++, cp++) {
    c <<= 4;
    if (isdigit((unsigned char)*cp))
     c |= (*cp - '0');
    else
     c |= ((toupper((unsigned char)*cp) -
         'A') + 10);
   }
   *orig = c;
   --cp;
   continue;
  default:
   --cp;
   break;
  }
 }

 return (new);
}
