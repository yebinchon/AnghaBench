
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ext_size; } ;
struct TYPE_3__ {int len; } ;
struct mbuf {TYPE_2__ m_ext; int m_len; TYPE_1__ m_pkthdr; } ;
struct dwc_softc {int dummy; } ;


 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 struct mbuf* m_getcl (int ,int ,int ) ;

__attribute__((used)) static struct mbuf *
dwc_alloc_mbufcl(struct dwc_softc *sc)
{
 struct mbuf *m;

 m = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
 if (m != ((void*)0))
  m->m_pkthdr.len = m->m_len = m->m_ext.ext_size;

 return (m);
}
