
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef void* vm_offset_t ;
typedef int uintmax_t ;
typedef int uint64_t ;
struct nlm_xlpge_softc {int prepad_size; scalar_t__ prepad_en; struct ifnet* xlpge_if; } ;
struct TYPE_2__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_data; int m_len; TYPE_1__ m_pkthdr; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;


 int IFCOUNTER_IPACKETS ;
 scalar_t__ NAE_CACHELINE_SIZE ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int nlm_cpuid () ;
 void* nlm_paddr_ld (scalar_t__) ;
 int printf (char*,...) ;
 int stub1 (struct ifnet*,struct mbuf*) ;
 int stub2 (struct ifnet*,struct mbuf*) ;
 int xlpge_tx (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
nlm_xlpge_rx(struct nlm_xlpge_softc *sc, int port, vm_paddr_t paddr, int len)
{
 struct ifnet *ifp;
 struct mbuf *m;
 vm_offset_t temp;
 unsigned long mag;
 int prepad_size;

 ifp = sc->xlpge_if;
 temp = nlm_paddr_ld(paddr - NAE_CACHELINE_SIZE);
 mag = nlm_paddr_ld(paddr - NAE_CACHELINE_SIZE + sizeof(uint64_t));

 m = (struct mbuf *)(intptr_t)temp;
 if (mag != 0xf00bad) {

  printf("cpu %d: ERR Rx packet paddr %jx, temp %p, mag %lx\n",
      nlm_cpuid(), (uintmax_t)paddr, (void *)temp, mag);
  return;
 }

 m->m_pkthdr.rcvif = ifp;
 if (sc->prepad_en) {
  prepad_size = ((sc->prepad_size + 1) * 16);
  m->m_data += prepad_size;
  m->m_pkthdr.len = m->m_len = (len - prepad_size);
 } else
  m->m_pkthdr.len = m->m_len = len;

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);






 (*ifp->if_input)(ifp, m);

}
