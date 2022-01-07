
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
prstr(char *cp)
{
 int c;

 while ((c = (*cp++ & 0377)))
  if (c < ' ')
   fprintf(stderr, "^%c", c + '`');
  else if (c == 0177)
   fprintf(stderr, "^?");
  else if (c > 0200)
   fprintf(stderr, "\\%03o", c);
  else
   fprintf(stderr, "%c", c);
}
