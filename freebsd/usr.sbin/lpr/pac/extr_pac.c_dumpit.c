
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hent {int h_count; float h_feetpages; char* h_name; struct hent* h_link; } ;


 scalar_t__ allflag ;
 scalar_t__ calloc (int,size_t) ;
 struct hent** hashtab ;
 size_t hcount ;
 double price ;
 int printf (char*,...) ;
 int qsort (struct hent**,size_t,int,int ) ;
 int qucmp ;

__attribute__((used)) static void
dumpit(void)
{
 struct hent **base;
 register struct hent *hp, **ap;
 register int hno, runs;
 size_t c;
 float feet;

 hp = hashtab[0];
 hno = 1;
 base = (struct hent **) calloc(sizeof hp, hcount);
 for (ap = base, c = hcount; c--; ap++) {
  while (hp == ((void*)0))
   hp = hashtab[hno++];
  *ap = hp;
  hp = hp->h_link;
 }
 qsort(base, hcount, sizeof hp, qucmp);
 printf("  Login               pages/feet   runs    price\n");
 feet = 0.0;
 runs = 0;
 for (ap = base, c = hcount; c--; ap++) {
  hp = *ap;
  runs += hp->h_count;
  feet += hp->h_feetpages;
  printf("%-24s %7.2f %4d   $%6.2f\n", hp->h_name,
      hp->h_feetpages, hp->h_count, hp->h_feetpages * price);
 }
 if (allflag) {
  printf("\n");
  printf("%-24s %7.2f %4d   $%6.2f\n", "total", feet,
      runs, feet * price);
 }
}
