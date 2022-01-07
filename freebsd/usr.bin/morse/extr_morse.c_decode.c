
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct morsetab {char inchar; int morse; } ;


 struct morsetab* hightab ;
 struct morsetab* mtab ;
 int putchar (char) ;
 scalar_t__ strcmp (int ,char*) ;

void
decode(char *p)
{
 char c;
 const struct morsetab *m;

 c = ' ';
 for (m = mtab; m != ((void*)0) && m->inchar != '\0'; m++) {
  if (strcmp(m->morse, p) == 0) {
   c = m->inchar;
   break;
  }
 }

 if (c == ' ')
  for (m = hightab; m != ((void*)0) && m->inchar != '\0'; m++) {
   if (strcmp(m->morse, p) == 0) {
    c = m->inchar;
    break;
   }
  }

 putchar(c);
}
