
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fw_rss_ind_tbl_cmd {void* startidx; void* niqid; int iq0_to_iq2; void* retval_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef int cmd ;
typedef int __be32 ;


 int FW_LEN16 (struct fw_rss_ind_tbl_cmd) ;
 int FW_RSS_IND_TBL_CMD ;
 int F_FW_CMD_REQUEST ;
 int F_FW_CMD_WRITE ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_RSS_IND_TBL_CMD_IQ0 (scalar_t__) ;
 int V_FW_RSS_IND_TBL_CMD_IQ1 (scalar_t__) ;
 int V_FW_RSS_IND_TBL_CMD_IQ2 (scalar_t__) ;
 int V_FW_RSS_IND_TBL_CMD_VIID (unsigned int) ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_rss_ind_tbl_cmd*,int ,int) ;
 int min (int,int) ;
 int t4_wr_mbox (struct adapter*,int,struct fw_rss_ind_tbl_cmd*,int,int *) ;

int t4_config_rss_range(struct adapter *adapter, int mbox, unsigned int viid,
   int start, int n, const u16 *rspq, unsigned int nrspq)
{
 int ret;
 const u16 *rsp = rspq;
 const u16 *rsp_end = rspq + nrspq;
 struct fw_rss_ind_tbl_cmd cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_viid = cpu_to_be32(V_FW_CMD_OP(FW_RSS_IND_TBL_CMD) |
         F_FW_CMD_REQUEST | F_FW_CMD_WRITE |
         V_FW_RSS_IND_TBL_CMD_VIID(viid));
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));







 while (n > 0) {
  int nq = min(n, 32);
  int nq_packed = 0;
  __be32 *qp = &cmd.iq0_to_iq2;





  cmd.niqid = cpu_to_be16(nq);
  cmd.startidx = cpu_to_be16(start);




  start += nq;
  n -= nq;






  while (nq > 0) {






   u16 qbuf[3];
   u16 *qbp = qbuf;
   int nqbuf = min(3, nq);

   nq -= nqbuf;
   qbuf[0] = qbuf[1] = qbuf[2] = 0;
   while (nqbuf && nq_packed < 32) {
    nqbuf--;
    nq_packed++;
    *qbp++ = *rsp++;
    if (rsp >= rsp_end)
     rsp = rspq;
   }
   *qp++ = cpu_to_be32(V_FW_RSS_IND_TBL_CMD_IQ0(qbuf[0]) |
         V_FW_RSS_IND_TBL_CMD_IQ1(qbuf[1]) |
         V_FW_RSS_IND_TBL_CMD_IQ2(qbuf[2]));
  }





  ret = t4_wr_mbox(adapter, mbox, &cmd, sizeof(cmd), ((void*)0));
  if (ret)
   return ret;
 }
 return 0;
}
