
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ to; scalar_t__ from; } ;
struct diff {TYPE_1__ new; TYPE_1__ old; } ;


 int change (int,TYPE_1__*,int) ;
 struct diff* d13 ;
 struct diff* d23 ;
 int duplicate (TYPE_1__*,TYPE_1__*) ;
 int edit (struct diff*,int,int) ;
 int edscript (int) ;
 scalar_t__ eflag ;
 int keep (int,TYPE_1__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
merge(int m1, int m2)
{
 struct diff *d1, *d2, *d3;
 int j, t1, t2;
 bool dup = 0;

 d1 = d13;
 d2 = d23;
 j = 0;

 while ((t1 = d1 < d13 + m1) | (t2 = d2 < d23 + m2)) {

  if (!t2 || (t1 && d1->new.to < d2->new.from)) {

   if (eflag == 0) {
    printf("====1\n");
    change(1, &d1->old, 0);
    keep(2, &d1->new);
    change(3, &d1->new, 0);
   }
   d1++;
   continue;
  }

  if (!t1 || (t2 && d2->new.to < d1->new.from)) {
   if (eflag == 0) {
    printf("====2\n");
    keep(1, &d2->new);
    change(3, &d2->new, 0);
    change(2, &d2->old, 0);
   }
   d2++;
   continue;
  }




  if (d1 + 1 < d13 + m1 && d1->new.to >= d1[1].new.from) {
   d1[1].old.from = d1->old.from;
   d1[1].new.from = d1->new.from;
   d1++;
   continue;
  }


  if (d2 + 1 < d23 + m2 && d2->new.to >= d2[1].new.from) {
   d2[1].old.from = d2->old.from;
   d2[1].new.from = d2->new.from;
   d2++;
   continue;
  }

  if (d1->new.from == d2->new.from && d1->new.to == d2->new.to) {
   dup = duplicate(&d1->old, &d2->old);




   if (eflag == 0) {
    printf("====%s\n", dup ? "3" : "");
    change(1, &d1->old, dup);
    change(2, &d2->old, 0);
    d3 = d1->old.to > d1->old.from ? d1 : d2;
    change(3, &d3->new, 0);
   } else
    j = edit(d1, dup, j);
   d1++;
   d2++;
   continue;
  }




  if (d1->new.from < d2->new.from) {
   d2->old.from -= d2->new.from - d1->new.from;
   d2->new.from = d1->new.from;
  } else if (d2->new.from < d1->new.from) {
   d1->old.from -= d1->new.from - d2->new.from;
   d1->new.from = d2->new.from;
  }
  if (d1->new.to > d2->new.to) {
   d2->old.to += d1->new.to - d2->new.to;
   d2->new.to = d1->new.to;
  } else if (d2->new.to > d1->new.to) {
   d1->old.to += d2->new.to - d1->new.to;
   d1->new.to = d2->new.to;
  }
 }
 if (eflag)
  edscript(j);
}
