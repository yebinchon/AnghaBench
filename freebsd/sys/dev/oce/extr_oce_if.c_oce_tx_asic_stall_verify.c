
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
typedef int POCE_SOFTC ;


 int FALSE ;
 scalar_t__ IS_QNQ_OR_UMC (int ) ;
 int TRUE ;
 scalar_t__ is_be3_a1 (int ) ;
 scalar_t__ oce_check_ipv6_ext_hdr (struct mbuf*) ;

__attribute__((used)) static int
oce_tx_asic_stall_verify(POCE_SOFTC sc, struct mbuf *m)
{
 if(is_be3_a1(sc) && IS_QNQ_OR_UMC(sc) && oce_check_ipv6_ext_hdr(m)) {

  return TRUE;
 }
 return FALSE;
}
