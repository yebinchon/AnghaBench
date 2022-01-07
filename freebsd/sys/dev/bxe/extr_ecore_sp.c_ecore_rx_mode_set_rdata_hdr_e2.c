
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct eth_classify_header {int rule_cnt; int echo; } ;


 int ECORE_CPU_TO_LE32 (int ) ;

__attribute__((used)) static inline void ecore_rx_mode_set_rdata_hdr_e2(uint32_t cid,
    struct eth_classify_header *hdr,
    uint8_t rule_cnt)
{
 hdr->echo = ECORE_CPU_TO_LE32(cid);
 hdr->rule_cnt = rule_cnt;
}
