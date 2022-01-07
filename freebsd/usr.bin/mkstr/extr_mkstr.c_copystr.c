
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EOF ;
 int errx (int,char*) ;
 int getchar () ;
 int hashit (char*,int,int ) ;
 int octdigit (int) ;
 int printf (char*,int) ;

void
copystr(void)
{
 int c, ch;
 char buf[512];
 char *cp = buf;

 for (;;) {
  if (cp == buf + sizeof(buf) - 2)
   errx(1, "message too long");
  c = getchar();
  if (c == EOF)
   break;
  switch (c) {

  case '"':
   *cp++ = 0;
   goto out;
  case '\\':
   c = getchar();
   switch (c) {

   case 'b':
    c = '\b';
    break;
   case 't':
    c = '\t';
    break;
   case 'r':
    c = '\r';
    break;
   case 'n':
    c = '\n';
    break;
   case '\n':
    continue;
   case 'f':
    c = '\f';
    break;
   case '0':
    c = 0;
    break;
   case '\\':
    break;
   default:
    if (!octdigit(c))
     break;
    c -= '0';
    ch = getchar();
    if (!octdigit(ch))
     break;
    c <<= 7, c += ch - '0';
    ch = getchar();
    if (!octdigit(ch))
     break;
    c <<= 3, c+= ch - '0', ch = -1;
    break;
   }
  }
  *cp++ = c;
 }
out:
 *cp = 0;
 printf("%d", hashit(buf, 1, 0));
}
