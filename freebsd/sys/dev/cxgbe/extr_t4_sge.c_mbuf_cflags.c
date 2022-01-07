
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* eight; } ;
struct TYPE_4__ {TYPE_1__ PH_loc; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;


 int M_ASSERTPKTHDR (struct mbuf*) ;

__attribute__((used)) static inline int
mbuf_cflags(struct mbuf *m)
{

 M_ASSERTPKTHDR(m);
 return (m->m_pkthdr.PH_loc.eight[4]);
}
