
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;


 int NMTUS ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_read_mtu_tbl (struct adapter*,int *,int *) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_path_mtu(struct cudbg_init *pdbg_init,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 u32 size;
 int rc = 0;

 size = NMTUS * sizeof(u16);

 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 t4_read_mtu_tbl(padap, (u16 *)scratch_buff.data, ((void*)0));

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);
err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
