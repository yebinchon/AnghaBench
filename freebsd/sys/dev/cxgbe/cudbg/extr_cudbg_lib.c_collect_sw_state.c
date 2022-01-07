
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sw_state {scalar_t__ os_type; int caller_string; int fw_state; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;


 int A_PCIE_FW ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int snprintf (int ,int,char*,char*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_sw_state(struct cudbg_init *pdbg_init,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 struct sw_state *swstate;
 u32 size;
 int rc = 0;

 size = sizeof(struct sw_state);

 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 swstate = (struct sw_state *) scratch_buff.data;

 swstate->fw_state = t4_read_reg(padap, A_PCIE_FW);
 snprintf(swstate->caller_string, sizeof(swstate->caller_string), "%s",
     "FreeBSD");
 swstate->os_type = 0;

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);

err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
