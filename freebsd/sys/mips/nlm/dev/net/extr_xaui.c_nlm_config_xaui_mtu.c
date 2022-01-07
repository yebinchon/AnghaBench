
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int XAUI_MAX_FRAME_LEN (int) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_config_xaui_mtu(uint64_t nae_base, int nblock,
    int max_tx_frame_sz, int max_rx_frame_sz)
{
 uint32_t tx_words = max_tx_frame_sz >> 2;


 nlm_write_nae_reg(nae_base,
     XAUI_MAX_FRAME_LEN(nblock),
     ((tx_words & 0x3ff) << 16) | (max_rx_frame_sz & 0xffff));
}
