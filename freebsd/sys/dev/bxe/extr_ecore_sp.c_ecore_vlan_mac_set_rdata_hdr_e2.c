
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct eth_classify_header {scalar_t__ rule_cnt; int echo; } ;


 int ECORE_CPU_TO_LE32 (int) ;
 int ECORE_SWCID_MASK ;
 int ECORE_SWCID_SHIFT ;

__attribute__((used)) static inline void ecore_vlan_mac_set_rdata_hdr_e2(uint32_t cid, int type,
    struct eth_classify_header *hdr, int rule_cnt)
{
 hdr->echo = ECORE_CPU_TO_LE32((cid & ECORE_SWCID_MASK) |
    (type << ECORE_SWCID_SHIFT));
 hdr->rule_cnt = (uint8_t)rule_cnt;
}
