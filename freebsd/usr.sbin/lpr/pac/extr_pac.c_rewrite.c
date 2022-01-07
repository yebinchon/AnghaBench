
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hent {double h_feetpages; char* h_name; int h_count; struct hent* h_link; } ;
typedef int FILE ;


 int HSHSIZE ;
 int acctfile ;
 int errs ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,double,char*,int) ;
 struct hent** hashtab ;
 int sumfile ;
 int warn (char*,int ) ;

__attribute__((used)) static void
rewrite(void)
{
 register struct hent *hp;
 register int i;
 FILE *acctf;

 if ((acctf = fopen(sumfile, "w")) == ((void*)0)) {
  warn("%s", sumfile);
  errs++;
  return;
 }
 for (i = 0; i < HSHSIZE; i++) {
  hp = hashtab[i];
  while (hp != ((void*)0)) {
   fprintf(acctf, "%7.2f\t%s\t%d\n", hp->h_feetpages,
       hp->h_name, hp->h_count);
   hp = hp->h_link;
  }
 }
 fflush(acctf);
 if (ferror(acctf)) {
  warn("%s", sumfile);
  errs++;
 }
 fclose(acctf);
 if ((acctf = fopen(acctfile, "w")) == ((void*)0))
  warn("%s", acctfile);
 else
  fclose(acctf);
}
