#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int size; scalar_t__ data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_DEBUG_DATA_HIGH_INDEX_10 ; 
 int FUNC0 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int,int,int*,int,int) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int*,int,int,int) ; 
 int** t5_pcie_cdbg_array ; 
 int** t5_tp_pio_array ; 
 int FUNC8 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC9(struct cudbg_init *pdbg_init,
			struct cudbg_buffer *dbg_buff,
			struct cudbg_error *cudbg_err)
{
	struct cudbg_buffer scratch_buff;
	struct adapter *padap = pdbg_init->adap;
	u32 reg_addr, reg_data, reg_local_offset, reg_offset_range;
	u32 *sp;
	int rc;
	int nreg = 0;

	/* Collect Registers:
	 * TP_DBG_SCHED_TX (0x7e40 + 0x6a),
	 * TP_DBG_SCHED_RX (0x7e40 + 0x6b),
	 * TP_DBG_CSIDE_INT (0x7e40 + 0x23f),
	 * TP_DBG_ESIDE_INT (0x7e40 + 0x148),
	 * PCIE_CDEBUG_INDEX[AppData0] (0x5a10 + 2),
	 * PCIE_CDEBUG_INDEX[AppData1] (0x5a10 + 3)  This is for T6
	 * SGE_DEBUG_DATA_HIGH_INDEX_10 (0x12a8)
	 **/

	if (FUNC2(padap))
		nreg = 6;
	else if (FUNC3(padap))
		nreg = 7;

	scratch_buff.size = nreg * sizeof(u32);

	rc = FUNC1(dbg_buff, scratch_buff.size, &scratch_buff);
	if (rc)
		goto err;

	sp = (u32 *)scratch_buff.data;

	/* TP_DBG_SCHED_TX */
	reg_local_offset = t5_tp_pio_array[3][2] + 0xa;
	reg_offset_range = 1;

	FUNC7(padap, sp, reg_offset_range, reg_local_offset, true);

	sp++;

	/* TP_DBG_SCHED_RX */
	reg_local_offset = t5_tp_pio_array[3][2] + 0xb;
	reg_offset_range = 1;

	FUNC7(padap, sp, reg_offset_range, reg_local_offset, true);

	sp++;

	/* TP_DBG_CSIDE_INT */
	reg_local_offset = t5_tp_pio_array[9][2] + 0xf;
	reg_offset_range = 1;

	FUNC7(padap, sp, reg_offset_range, reg_local_offset, true);

	sp++;

	/* TP_DBG_ESIDE_INT */
	reg_local_offset = t5_tp_pio_array[8][2] + 3;
	reg_offset_range = 1;

	FUNC7(padap, sp, reg_offset_range, reg_local_offset, true);

	sp++;

	/* PCIE_CDEBUG_INDEX[AppData0] */
	reg_addr = t5_pcie_cdbg_array[0][0];
	reg_data = t5_pcie_cdbg_array[0][1];
	reg_local_offset = t5_pcie_cdbg_array[0][2] + 2;
	reg_offset_range = 1;

	FUNC5(padap, reg_addr, reg_data, sp, reg_offset_range,
			 reg_local_offset);

	sp++;

	if (FUNC3(padap)) {
		/* PCIE_CDEBUG_INDEX[AppData1] */
		reg_addr = t5_pcie_cdbg_array[0][0];
		reg_data = t5_pcie_cdbg_array[0][1];
		reg_local_offset = t5_pcie_cdbg_array[0][2] + 3;
		reg_offset_range = 1;

		FUNC5(padap, reg_addr, reg_data, sp,
				 reg_offset_range, reg_local_offset);

		sp++;
	}

	/* SGE_DEBUG_DATA_HIGH_INDEX_10 */
	*sp = FUNC6(padap, A_SGE_DEBUG_DATA_HIGH_INDEX_10);

	rc = FUNC8(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC0(&scratch_buff, dbg_buff);

err1:
	FUNC4(&scratch_buff, dbg_buff);
err:
	return rc;
}