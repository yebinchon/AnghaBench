
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_5__ {struct mbuf** m; int mem; } ;
typedef TYPE_1__ pfil_packet_t ;


 int ENOMEM ;
 int MPASS (int) ;
 int PFIL_LENGTH (int) ;
 int PFIL_MEMPTR ;
 struct mbuf* m_devget (int ,int ,int ,struct ifnet*,int *) ;
 TYPE_1__ pfil_packet_align (TYPE_1__) ;

int
pfil_realloc(pfil_packet_t *p, int flags, struct ifnet *ifp)
{
 struct mbuf *m;

 MPASS(flags & PFIL_MEMPTR);

 if ((m = m_devget(p->mem, PFIL_LENGTH(flags), 0, ifp, ((void*)0))) == ((void*)0))
  return (ENOMEM);
 *p = pfil_packet_align(*p);
 *p->m = m;

 return (0);
}
