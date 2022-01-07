
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbchain {int * mb_top; } ;


 int m_freem (int *) ;

void
mb_done(struct mbchain *mbp)
{
 if (mbp->mb_top) {
  m_freem(mbp->mb_top);
  mbp->mb_top = ((void*)0);
 }
}
