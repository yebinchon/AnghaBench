
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct struct_pm_stats {int rx_cyc; int rx_cnt; int tx_cyc; int tx_cnt; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;


 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_pmrx_get_stats (struct adapter*,int ,int ) ;
 int t4_pmtx_get_stats (struct adapter*,int ,int ) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_pm_stats(struct cudbg_init *pdbg_init,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 struct struct_pm_stats *pm_stats_buff;
 u32 size;
 int rc = 0;

 size = sizeof(struct struct_pm_stats);

 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 pm_stats_buff = (struct struct_pm_stats *) scratch_buff.data;

 t4_pmtx_get_stats(padap, pm_stats_buff->tx_cnt, pm_stats_buff->tx_cyc);
 t4_pmrx_get_stats(padap, pm_stats_buff->rx_cnt, pm_stats_buff->rx_cyc);

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);
err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
