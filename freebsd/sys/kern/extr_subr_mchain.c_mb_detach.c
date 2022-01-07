
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbchain {struct mbuf* mb_top; } ;



struct mbuf *
mb_detach(struct mbchain *mbp)
{
 struct mbuf *m;

 m = mbp->mb_top;
 mbp->mb_top = ((void*)0);
 return (m);
}
