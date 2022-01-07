
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cngetc () ;
 int cngrab () ;
 int cnputc (int) ;
 int cnputs (char*) ;
 int cnungrab () ;

void
cngets(char *cp, size_t size, int visible)
{
 char *lp, *end;
 int c;

 cngrab();

 lp = cp;
 end = cp + size - 1;
 for (;;) {
  c = cngetc() & 0177;
  switch (c) {
  case '\n':
  case '\r':
   cnputc(c);
   *lp = '\0';
   cnungrab();
   return;
  case '\b':
  case '\177':
   if (lp > cp) {
    if (visible)
     cnputs("\b \b");
    lp--;
   }
   continue;
  case '\0':
   continue;
  default:
   if (lp < end) {
    switch (visible) {
    case 128:
     break;
    case 129:
     cnputc('*');
     break;
    default:
     cnputc(c);
     break;
    }
    *lp++ = c;
   }
  }
 }
}
