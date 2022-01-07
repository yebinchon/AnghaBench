
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_request_hdr {int dummy; } ;
struct ulp_txpkt {int dummy; } ;


 int INIT_ULPTX_WRH (struct work_request_hdr*,int,int ,int ) ;
 int M_TCB_RSS_INFO ;
 int V_TCB_RSS_INFO (int) ;
 int W_TCB_RSS_INFO ;
 struct ulp_txpkt* mk_abort_req_ulp (struct ulp_txpkt*,int) ;
 struct ulp_txpkt* mk_abort_rpl_ulp (struct ulp_txpkt*,int) ;
 struct ulp_txpkt* mk_set_tcb_field_ulp (struct ulp_txpkt*,int ,int ,int ,int,int ) ;

__attribute__((used)) static void
mk_del_hashfilter_wr(int tid, struct work_request_hdr *wrh, int wrlen, int qid)
{
 struct ulp_txpkt *ulpmc;

 INIT_ULPTX_WRH(wrh, wrlen, 0, 0);
 ulpmc = (struct ulp_txpkt *)(wrh + 1);
 ulpmc = mk_set_tcb_field_ulp(ulpmc, W_TCB_RSS_INFO,
     V_TCB_RSS_INFO(M_TCB_RSS_INFO), V_TCB_RSS_INFO(qid), tid, 0);
 ulpmc = mk_abort_req_ulp(ulpmc, tid);
 ulpmc = mk_abort_rpl_ulp(ulpmc, tid);
}
