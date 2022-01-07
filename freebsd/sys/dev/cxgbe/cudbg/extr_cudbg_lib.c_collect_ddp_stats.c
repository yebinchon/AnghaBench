
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tp_usm_stats {int dummy; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;


 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_get_usm_stats (struct adapter*,struct tp_usm_stats*,int) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_ddp_stats(struct cudbg_init *pdbg_init,
        struct cudbg_buffer *dbg_buff,
        struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 struct tp_usm_stats *tp_usm_stats_buff;
 u32 size;
 int rc = 0;

 size = sizeof(struct tp_usm_stats);

 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 tp_usm_stats_buff = (struct tp_usm_stats *) scratch_buff.data;


 t4_get_usm_stats(padap, tp_usm_stats_buff, 1);


 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);

err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
