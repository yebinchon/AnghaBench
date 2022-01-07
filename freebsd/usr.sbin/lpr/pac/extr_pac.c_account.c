
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hent {double h_feetpages; scalar_t__ h_count; } ;
typedef int FILE ;


 int BUFSIZ ;
 int allflag ;
 scalar_t__ any (char,char*) ;
 double atof (char*) ;
 int atoi (char*) ;
 struct hent* enter (char*) ;
 int * fgets (char*,int,int *) ;
 struct hent* lookup (char*) ;
 scalar_t__ mflag ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
account(FILE *acctf)
{
 char linebuf[BUFSIZ];
 double t;
 register char *cp, *cp2;
 register struct hent *hp;
 register int ic;

 while (fgets(linebuf, BUFSIZ, acctf) != ((void*)0)) {
  cp = linebuf;
  while (any(*cp, " \t"))
   cp++;
  t = atof(cp);
  while (any(*cp, ".0123456789"))
   cp++;
  while (any(*cp, " \t"))
   cp++;
  for (cp2 = cp; !any(*cp2, " \t\n"); cp2++)
   ;
  ic = atoi(cp2);
  *cp2 = '\0';
  if (mflag && strchr(cp, ':'))
      cp = strchr(cp, ':') + 1;
  hp = lookup(cp);
  if (hp == ((void*)0)) {
   if (!allflag)
    continue;
   hp = enter(cp);
  }
  hp->h_feetpages += t;
  if (ic)
   hp->h_count += ic;
  else
   hp->h_count++;
 }
}
