
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_TP_RSS_LKP_TABLE ;
 int F_LKPTBLROWVLD ;
 int t4_wait_op_done_val (struct adapter*,int ,int ,int,int,int ,int *) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static int rd_rss_row(struct adapter *adap, int row, u32 *val)
{
 t4_write_reg(adap, A_TP_RSS_LKP_TABLE, 0xfff00000 | row);
 return t4_wait_op_done_val(adap, A_TP_RSS_LKP_TABLE, F_LKPTBLROWVLD, 1,
       5, 0, val);
}
