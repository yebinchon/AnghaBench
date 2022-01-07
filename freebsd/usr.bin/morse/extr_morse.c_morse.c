
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct morsetab {char inchar; char* morse; } ;


 scalar_t__ device ;
 struct morsetab* hightab ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ lflag ;
 struct morsetab* mtab ;
 scalar_t__ pflag ;
 int play (char*) ;
 int printf (char*) ;
 int show (char*) ;
 char tolower (unsigned char) ;
 int ttyout (char*) ;

__attribute__((used)) static void
morse(char c)
{
 const struct morsetab *m;

 if (isalpha((unsigned char)c))
  c = tolower((unsigned char)c);
 if ((c == '\r') || (c == '\n'))
  c = ' ';
 if (c == ' ') {
  if (pflag)
   play(" ");
  else if (device)
   ttyout(" ");
  else if (lflag)
   printf("\n");
  else
   show("");
  return;
 }
 for (m = ((unsigned char)c < 0x80? mtab: hightab);
      m != ((void*)0) && m->inchar != '\0';
      m++) {
  if (m->inchar == c) {
   if (pflag) {
    play(m->morse);
   } else if (device) {
    ttyout(m->morse);
   } else
    show(m->morse);
  }
 }
}
