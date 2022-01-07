
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hent {scalar_t__ h_feetpages; int h_name; } ;


 scalar_t__ reverse ;
 scalar_t__ sort ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
qucmp(const void *a, const void *b)
{
 register const struct hent *h1, *h2;
 register int r;

 h1 = *(const struct hent * const *)a;
 h2 = *(const struct hent * const *)b;
 if (sort)
  r = h1->h_feetpages < h2->h_feetpages ?
      -1 : h1->h_feetpages > h2->h_feetpages;
 else
  r = strcmp(h1->h_name, h2->h_name);
 return(reverse ? -r : r);
}
