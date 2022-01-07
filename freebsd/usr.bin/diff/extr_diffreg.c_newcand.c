
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cand {int x; int y; int pred; } ;


 int clen ;
 struct cand* clist ;
 int clistlen ;
 struct cand* xreallocarray (struct cand*,int,int) ;

__attribute__((used)) static int
newcand(int x, int y, int pred)
{
 struct cand *q;

 if (clen == clistlen) {
  clistlen = clistlen * 11 / 10;
  clist = xreallocarray(clist, clistlen, sizeof(*clist));
 }
 q = clist + clen;
 q->x = x;
 q->y = y;
 q->pred = pred;
 return (clen++);
}
