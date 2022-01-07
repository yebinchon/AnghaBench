
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip {int dummy; } ;
struct cas_rx_comp {void* crc_word4; void* crc_word3; scalar_t__ crc_word2; scalar_t__ crc_word1; } ;


 int CAS_RC3_CSO ;
 int CAS_RC4_ZERO ;
 int CAS_SET (scalar_t__,int ) ;
 scalar_t__ ETHER_HDR_LEN ;
 void* htole64 (int ) ;

__attribute__((used)) static inline void
cas_rxcompinit(struct cas_rx_comp *rxcomp)
{

 rxcomp->crc_word1 = 0;
 rxcomp->crc_word2 = 0;
 rxcomp->crc_word3 =
     htole64(CAS_SET(ETHER_HDR_LEN + sizeof(struct ip), CAS_RC3_CSO));
 rxcomp->crc_word4 = htole64(CAS_RC4_ZERO);
}
