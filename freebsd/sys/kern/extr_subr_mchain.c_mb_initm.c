
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbchain {int mb_mleft; struct mbuf* mb_cur; struct mbuf* mb_top; } ;


 int M_TRAILINGSPACE (struct mbuf*) ;
 int bzero (struct mbchain*,int) ;

void
mb_initm(struct mbchain *mbp, struct mbuf *m)
{
 bzero(mbp, sizeof(*mbp));
 mbp->mb_top = mbp->mb_cur = m;
 mbp->mb_mleft = M_TRAILINGSPACE(m);
}
