
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdchain {int * md_top; } ;


 int m_freem (int *) ;

void
md_done(struct mdchain *mdp)
{
 if (mdp->md_top) {
  m_freem(mdp->md_top);
  mdp->md_top = ((void*)0);
 }
}
