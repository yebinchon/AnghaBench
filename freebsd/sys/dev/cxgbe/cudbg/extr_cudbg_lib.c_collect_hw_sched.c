
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct struct_hw_sched {int * ipg; int * kbps; int pace_tab; int mode; int map; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;


 int A_TP_MOD_CONFIG ;
 int A_TP_TX_MOD_QUEUE_REQ_MAP ;
 int CUDBG_STATUS_CCLK_NOT_DEFINED ;
 int G_TIMERMODE (int ) ;
 int NTX_SCHED ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_get_tx_sched (struct adapter*,int,int *,int *,int) ;
 int t4_read_pace_tbl (struct adapter*,int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_hw_sched(struct cudbg_init *pdbg_init,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 struct struct_hw_sched *hw_sched_buff;
 u32 size;
 int i, rc = 0;

 if (!padap->params.vpd.cclk) {
  rc = CUDBG_STATUS_CCLK_NOT_DEFINED;
  goto err;
 }

 size = sizeof(struct struct_hw_sched);
 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 hw_sched_buff = (struct struct_hw_sched *) scratch_buff.data;

 hw_sched_buff->map = t4_read_reg(padap, A_TP_TX_MOD_QUEUE_REQ_MAP);
 hw_sched_buff->mode = G_TIMERMODE(t4_read_reg(padap, A_TP_MOD_CONFIG));
 t4_read_pace_tbl(padap, hw_sched_buff->pace_tab);

 for (i = 0; i < NTX_SCHED; ++i) {
  t4_get_tx_sched(padap, i, &hw_sched_buff->kbps[i],
      &hw_sched_buff->ipg[i], 1);
 }

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);
err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
