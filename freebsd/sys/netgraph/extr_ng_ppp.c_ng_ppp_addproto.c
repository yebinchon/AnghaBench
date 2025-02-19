
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct mbuf {int dummy; } ;


 scalar_t__ PROT_COMPRESSABLE (scalar_t__) ;
 scalar_t__ htons (scalar_t__) ;
 struct mbuf* ng_ppp_prepend (struct mbuf*,scalar_t__*,int) ;

__attribute__((used)) static struct mbuf *
ng_ppp_addproto(struct mbuf *m, uint16_t proto, int compOK)
{
 if (compOK && PROT_COMPRESSABLE(proto)) {
  uint8_t pbyte = (uint8_t)proto;

  return ng_ppp_prepend(m, &pbyte, 1);
 } else {
  uint16_t pword = htons((uint16_t)proto);

  return ng_ppp_prepend(m, &pword, 2);
 }
}
