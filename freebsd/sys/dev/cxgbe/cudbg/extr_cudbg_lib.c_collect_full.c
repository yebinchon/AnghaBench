
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int size; scalar_t__ data; } ;
struct adapter {int dummy; } ;


 int A_SGE_DEBUG_DATA_HIGH_INDEX_10 ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 scalar_t__ is_t5 (struct adapter*) ;
 scalar_t__ is_t6 (struct adapter*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_read_indirect (struct adapter*,int,int,int*,int,int) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_pio_read (struct adapter*,int*,int,int,int) ;
 int** t5_pcie_cdbg_array ;
 int** t5_tp_pio_array ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_full(struct cudbg_init *pdbg_init,
   struct cudbg_buffer *dbg_buff,
   struct cudbg_error *cudbg_err)
{
 struct cudbg_buffer scratch_buff;
 struct adapter *padap = pdbg_init->adap;
 u32 reg_addr, reg_data, reg_local_offset, reg_offset_range;
 u32 *sp;
 int rc;
 int nreg = 0;
 if (is_t5(padap))
  nreg = 6;
 else if (is_t6(padap))
  nreg = 7;

 scratch_buff.size = nreg * sizeof(u32);

 rc = get_scratch_buff(dbg_buff, scratch_buff.size, &scratch_buff);
 if (rc)
  goto err;

 sp = (u32 *)scratch_buff.data;


 reg_local_offset = t5_tp_pio_array[3][2] + 0xa;
 reg_offset_range = 1;

 t4_tp_pio_read(padap, sp, reg_offset_range, reg_local_offset, 1);

 sp++;


 reg_local_offset = t5_tp_pio_array[3][2] + 0xb;
 reg_offset_range = 1;

 t4_tp_pio_read(padap, sp, reg_offset_range, reg_local_offset, 1);

 sp++;


 reg_local_offset = t5_tp_pio_array[9][2] + 0xf;
 reg_offset_range = 1;

 t4_tp_pio_read(padap, sp, reg_offset_range, reg_local_offset, 1);

 sp++;


 reg_local_offset = t5_tp_pio_array[8][2] + 3;
 reg_offset_range = 1;

 t4_tp_pio_read(padap, sp, reg_offset_range, reg_local_offset, 1);

 sp++;


 reg_addr = t5_pcie_cdbg_array[0][0];
 reg_data = t5_pcie_cdbg_array[0][1];
 reg_local_offset = t5_pcie_cdbg_array[0][2] + 2;
 reg_offset_range = 1;

 t4_read_indirect(padap, reg_addr, reg_data, sp, reg_offset_range,
    reg_local_offset);

 sp++;

 if (is_t6(padap)) {

  reg_addr = t5_pcie_cdbg_array[0][0];
  reg_data = t5_pcie_cdbg_array[0][1];
  reg_local_offset = t5_pcie_cdbg_array[0][2] + 3;
  reg_offset_range = 1;

  t4_read_indirect(padap, reg_addr, reg_data, sp,
     reg_offset_range, reg_local_offset);

  sp++;
 }


 *sp = t4_read_reg(padap, A_SGE_DEBUG_DATA_HIGH_INDEX_10);

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);

err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
