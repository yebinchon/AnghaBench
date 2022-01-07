
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {int to; int from; } ;


 int EXIT_FAILURE ;
 int errx (int ,char*) ;
 int * fp ;
 int getc (int ) ;
 int repos (int) ;
 int skip (int,int,int *) ;

__attribute__((used)) static bool
duplicate(struct range *r1, struct range *r2)
{
 int c, d;
 int nchar;
 int nline;

 if (r1->to-r1->from != r2->to-r2->from)
  return (0);
 skip(0, r1->from, ((void*)0));
 skip(1, r2->from, ((void*)0));
 nchar = 0;
 for (nline=0; nline < r1->to - r1->from; nline++) {
  do {
   c = getc(fp[0]);
   d = getc(fp[1]);
   if (c == -1 || d== -1)
    errx(EXIT_FAILURE, "logic error");
   nchar++;
   if (c != d) {
    repos(nchar);
    return (0);
   }
  } while (c != '\n');
 }
 repos(nchar);
 return (1);
}
