
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {scalar_t__ to; scalar_t__ from; } ;


 int change (int,struct range*,int) ;
 int* last ;

__attribute__((used)) static void
keep(int i, struct range *rnew)
{
 int delta;
 struct range trange;

 delta = last[3] - last[i];
 trange.from = rnew->from - delta;
 trange.to = rnew->to - delta;
 change(i, &trange, 1);
}
