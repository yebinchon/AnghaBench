
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_filter_wr {int rx_chan_rx_rpl_iq; void* del_filter_to_l2tix; void* tid_to_iq; void* len16_pkd; void* op_pkd; } ;


 int FW_FILTER_WR ;
 int F_FW_FILTER_WR_DEL_FILTER ;
 int V_FW_FILTER_WR_NOREPLY (int) ;
 int V_FW_FILTER_WR_RX_RPL_IQ (int) ;
 int V_FW_FILTER_WR_TID (unsigned int) ;
 int V_FW_WR_LEN16 (int) ;
 int V_FW_WR_OP (int ) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_filter_wr*,int ,int) ;

void t4_mk_filtdelwr(unsigned int ftid, struct fw_filter_wr *wr, int qid)
{
 memset(wr, 0, sizeof(*wr));
 wr->op_pkd = cpu_to_be32(V_FW_WR_OP(FW_FILTER_WR));
 wr->len16_pkd = cpu_to_be32(V_FW_WR_LEN16(sizeof(*wr) / 16));
 wr->tid_to_iq = cpu_to_be32(V_FW_FILTER_WR_TID(ftid) |
        V_FW_FILTER_WR_NOREPLY(qid < 0));
 wr->del_filter_to_l2tix = cpu_to_be32(F_FW_FILTER_WR_DEL_FILTER);
 if (qid >= 0)
  wr->rx_chan_rx_rpl_iq =
    cpu_to_be16(V_FW_FILTER_WR_RX_RPL_IQ(qid));
}
