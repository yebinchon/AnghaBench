
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {int to; int from; } ;


 int * last ;
 int prange (struct range*) ;
 int printf (char*,int) ;
 int skip (int,int ,char*) ;

__attribute__((used)) static void
change(int i, struct range *rold, bool dup)
{

 printf("%d:", i);
 last[i] = rold->to;
 prange(rold);
 if (dup)
  return;
 i--;
 skip(i, rold->from, ((void*)0));
 skip(i, rold->to, "  ");
}
