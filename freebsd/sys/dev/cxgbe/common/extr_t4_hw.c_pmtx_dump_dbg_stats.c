
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int A_PM_TX_DBG_CTRL ;
 int A_PM_TX_DBG_DATA ;
 scalar_t__ A_PM_TX_DBG_STAT0 ;
 int CH_ALERT (struct adapter*,char*,int,scalar_t__,int ) ;
 int t4_read_indirect (struct adapter*,int ,int ,int *,int,scalar_t__) ;

__attribute__((used)) static bool pmtx_dump_dbg_stats(struct adapter *adap, int arg, bool verbose)
{
 int i;
 u32 data[17];

 t4_read_indirect(adap, A_PM_TX_DBG_CTRL, A_PM_TX_DBG_DATA, &data[0],
     ARRAY_SIZE(data), A_PM_TX_DBG_STAT0);
 for (i = 0; i < ARRAY_SIZE(data); i++) {
  CH_ALERT(adap, "  - PM_TX_DBG_STAT%u (0x%x) = 0x%08x\n", i,
      A_PM_TX_DBG_STAT0 + i, data[i]);
 }

 return (0);
}
