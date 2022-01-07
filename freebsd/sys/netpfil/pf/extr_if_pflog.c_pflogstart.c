
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_snd; } ;


 int IF_LOCK (int *) ;
 int IF_UNLOCK (int *) ;
 int _IF_DEQUEUE (int *,struct mbuf*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
pflogstart(struct ifnet *ifp)
{
 struct mbuf *m;

 for (;;) {
  IF_LOCK(&ifp->if_snd);
  _IF_DEQUEUE(&ifp->if_snd, m);
  IF_UNLOCK(&ifp->if_snd);

  if (m == ((void*)0))
   return;
  else
   m_freem(m);
 }
}
