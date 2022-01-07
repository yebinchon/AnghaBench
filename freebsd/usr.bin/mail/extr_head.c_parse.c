
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct headline {int * l_date; int * l_tty; int * l_from; } ;


 int LINESIZE ;
 void* copyin (char*,char**) ;
 scalar_t__ isdate (char*) ;
 char* nextword (char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void
parse(char line[], struct headline *hl, char pbuf[])
{
 char *cp, *sp;
 char word[LINESIZE];

 hl->l_from = ((void*)0);
 hl->l_tty = ((void*)0);
 hl->l_date = ((void*)0);
 cp = line;
 sp = pbuf;



 cp = nextword(cp, word);



 if (isdate(cp)) {
  hl->l_date = copyin(cp, &sp);
  return;
 }
 cp = nextword(cp, word);
 if (strlen(word) > 0)
  hl->l_from = copyin(word, &sp);
 if (cp != ((void*)0) && strncmp(cp, "tty", 3) == 0) {
  cp = nextword(cp, word);
  hl->l_tty = copyin(word, &sp);
 }
 if (cp != ((void*)0))
  hl->l_date = copyin(cp, &sp);
}
