
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_rx_packet {int len_n_flags; } ;


 int IWM_FH_RSCSR_FRAME_SIZE_MSK ;
 int le32toh (int ) ;

__attribute__((used)) static inline uint32_t
iwm_rx_packet_len(const struct iwm_rx_packet *pkt)
{

 return le32toh(pkt->len_n_flags) & IWM_FH_RSCSR_FRAME_SIZE_MSK;
}
