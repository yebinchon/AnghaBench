
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
struct mbuf {int dummy; } ;
typedef int intmax_t ;


 int XLP_NTXFRAGS ;
 int m_freem (struct mbuf*) ;
 int nl_tx_desc_zone ;
 int nlm_cpuid () ;
 int nlm_paddr_ld (int) ;
 int printf (char*,int,int ,int ,int ,int ) ;
 int uma_zfree (int ,void*) ;

__attribute__((used)) static void
nlm_xlpge_release_mbuf(uint64_t paddr)
{
 uint64_t mag, desc, mbuf;

 paddr += (XLP_NTXFRAGS - 3) * sizeof(uint64_t);
 mag = nlm_paddr_ld(paddr);
 desc = nlm_paddr_ld(paddr + sizeof(uint64_t));
 mbuf = nlm_paddr_ld(paddr + 2 * sizeof(uint64_t));

 if (mag != 0xf00bad) {

  printf("cpu %d: ERR Tx packet paddr %jx, mag %jx, desc %jx mbuf %jx\n",
      nlm_cpuid(), (uintmax_t)paddr, (uintmax_t)mag,
      (intmax_t)desc, (uintmax_t)mbuf);
  return;
 }
 m_freem((struct mbuf *)(uintptr_t)mbuf);
 uma_zfree(nl_tx_desc_zone, (void *)(uintptr_t)desc);
}
