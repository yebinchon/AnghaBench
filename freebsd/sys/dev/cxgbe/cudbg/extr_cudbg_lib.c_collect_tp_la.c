
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct struct_tp_la {scalar_t__ data; int mode; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;


 int A_TP_DBG_LA_CONFIG ;
 int G_DBGLAMODE (int ) ;
 int TPLA_SIZE ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_read_la (struct adapter*,int *,int *) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_tp_la(struct cudbg_init *pdbg_init,
    struct cudbg_buffer *dbg_buff,
    struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 struct struct_tp_la *tp_la_buff;
 u32 size;
 int rc = 0;

 size = sizeof(struct struct_tp_la) + TPLA_SIZE * sizeof(u64);

 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 tp_la_buff = (struct struct_tp_la *) scratch_buff.data;

 tp_la_buff->mode = G_DBGLAMODE(t4_read_reg(padap, A_TP_DBG_LA_CONFIG));
 t4_tp_read_la(padap, (u64 *)tp_la_buff->data, ((void*)0));

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);
err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
