
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdchain {TYPE_1__* md_top; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {struct mbuf* m_nextpkt; } ;


 int ENOENT ;
 int md_done (struct mdchain*) ;
 int md_initm (struct mdchain*,struct mbuf*) ;

int
md_next_record(struct mdchain *mdp)
{
 struct mbuf *m;

 if (mdp->md_top == ((void*)0))
  return (ENOENT);
 m = mdp->md_top->m_nextpkt;
 md_done(mdp);
 if (m == ((void*)0))
  return (ENOENT);
 md_initm(mdp, m);
 return (0);
}
