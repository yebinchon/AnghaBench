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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct thread {int dummy; } ;
struct t4_tracer {int dummy; } ;
struct t4_sge_context {int dummy; } ;
struct t4_sched_queue {int dummy; } ;
struct t4_sched_params {int dummy; } ;
struct t4_regdump {int len; int /*<<< orphan*/  data; } ;
struct t4_reg {int addr; int size; int val; } ;
struct t4_offload_policy {int dummy; } ;
struct t4_mem_range {int dummy; } ;
struct t4_i2c_data {int dummy; } ;
struct t4_filter {int dummy; } ;
struct t4_data {int dummy; } ;
struct t4_cudbg_dump {int dummy; } ;
struct t4_bootrom {int dummy; } ;
struct cdev {struct adapter* si_drv1; } ;
struct adapter {int mmio_len; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
#define  CHELSIO_T4_CLEAR_STATS 149 
#define  CHELSIO_T4_CUDBG_DUMP 148 
#define  CHELSIO_T4_DEL_FILTER 147 
#define  CHELSIO_T4_GETREG 146 
#define  CHELSIO_T4_GET_FILTER 145 
#define  CHELSIO_T4_GET_FILTER_MODE 144 
#define  CHELSIO_T4_GET_I2C 143 
#define  CHELSIO_T4_GET_MEM 142 
#define  CHELSIO_T4_GET_SGE_CONTEXT 141 
#define  CHELSIO_T4_GET_TRACER 140 
#define  CHELSIO_T4_LOAD_BOOT 139 
#define  CHELSIO_T4_LOAD_BOOTCFG 138 
#define  CHELSIO_T4_LOAD_CFG 137 
#define  CHELSIO_T4_LOAD_FW 136 
#define  CHELSIO_T4_REGDUMP 135 
#define  CHELSIO_T4_SCHED_CLASS 134 
#define  CHELSIO_T4_SCHED_QUEUE 133 
#define  CHELSIO_T4_SETREG 132 
#define  CHELSIO_T4_SET_FILTER 131 
#define  CHELSIO_T4_SET_FILTER_MODE 130 
#define  CHELSIO_T4_SET_OFLD_POLICY 129 
#define  CHELSIO_T4_SET_TRACER 128 
 int EFAULT ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOTTY ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PRIV_DRIVER ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct adapter*,struct t4_cudbg_dump*) ; 
 int FUNC3 (struct adapter*,struct t4_filter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,struct t4_filter*) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,struct t4_regdump*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct adapter*,struct t4_sge_context*) ; 
 int FUNC9 (struct adapter*,struct t4_bootrom*) ; 
 int FUNC10 (struct adapter*,struct t4_data*) ; 
 int FUNC11 (struct adapter*,struct t4_data*) ; 
 int FUNC12 (struct adapter*,struct t4_data*) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct adapter*,int,struct t4_mem_range*) ; 
 int FUNC16 (struct adapter*,struct t4_i2c_data*) ; 
 int FUNC17 (struct adapter*,struct t4_filter*) ; 
 int FUNC18 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct adapter*,struct t4_offload_policy*) ; 
 int FUNC20 (struct adapter*) ; 
 int FUNC21 (struct adapter*,struct t4_tracer*) ; 
 int FUNC22 (struct adapter*,int) ; 
 int FUNC23 (struct adapter*,int) ; 
 int FUNC24 (struct adapter*,struct t4_sched_params*) ; 
 int FUNC25 (struct adapter*,struct t4_sched_queue*) ; 
 int FUNC26 (struct adapter*,struct t4_tracer*) ; 
 int /*<<< orphan*/  FUNC27 (struct adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct adapter*,int,int) ; 

__attribute__((used)) static int
FUNC29(struct cdev *dev, unsigned long cmd, caddr_t data, int fflag,
    struct thread *td)
{
	int rc;
	struct adapter *sc = dev->si_drv1;

	rc = FUNC14(td, PRIV_DRIVER);
	if (rc != 0)
		return (rc);

	switch (cmd) {
	case CHELSIO_T4_GETREG: {
		struct t4_reg *edata = (struct t4_reg *)data;

		if ((edata->addr & 0x3) != 0 || edata->addr >= sc->mmio_len)
			return (EFAULT);

		if (edata->size == 4)
			edata->val = FUNC22(sc, edata->addr);
		else if (edata->size == 8)
			edata->val = FUNC23(sc, edata->addr);
		else
			return (EINVAL);

		break;
	}
	case CHELSIO_T4_SETREG: {
		struct t4_reg *edata = (struct t4_reg *)data;

		if ((edata->addr & 0x3) != 0 || edata->addr >= sc->mmio_len)
			return (EFAULT);

		if (edata->size == 4) {
			if (edata->val & 0xffffffff00000000)
				return (EINVAL);
			FUNC27(sc, edata->addr, (uint32_t) edata->val);
		} else if (edata->size == 8)
			FUNC28(sc, edata->addr, edata->val);
		else
			return (EINVAL);
		break;
	}
	case CHELSIO_T4_REGDUMP: {
		struct t4_regdump *regs = (struct t4_regdump *)data;
		int reglen = FUNC20(sc);
		uint8_t *buf;

		if (regs->len < reglen) {
			regs->len = reglen; /* hint to the caller */
			return (ENOBUFS);
		}

		regs->len = reglen;
		buf = FUNC13(reglen, M_CXGBE, M_WAITOK | M_ZERO);
		FUNC7(sc, regs, buf);
		rc = FUNC1(buf, regs->data, reglen);
		FUNC4(buf, M_CXGBE);
		break;
	}
	case CHELSIO_T4_GET_FILTER_MODE:
		rc = FUNC6(sc, (uint32_t *)data);
		break;
	case CHELSIO_T4_SET_FILTER_MODE:
		rc = FUNC18(sc, *(uint32_t *)data);
		break;
	case CHELSIO_T4_GET_FILTER:
		rc = FUNC5(sc, (struct t4_filter *)data);
		break;
	case CHELSIO_T4_SET_FILTER:
		rc = FUNC17(sc, (struct t4_filter *)data);
		break;
	case CHELSIO_T4_DEL_FILTER:
		rc = FUNC3(sc, (struct t4_filter *)data);
		break;
	case CHELSIO_T4_GET_SGE_CONTEXT:
		rc = FUNC8(sc, (struct t4_sge_context *)data);
		break;
	case CHELSIO_T4_LOAD_FW:
		rc = FUNC12(sc, (struct t4_data *)data);
		break;
	case CHELSIO_T4_GET_MEM:
		rc = FUNC15(sc, 2, (struct t4_mem_range *)data);
		break;
	case CHELSIO_T4_GET_I2C:
		rc = FUNC16(sc, (struct t4_i2c_data *)data);
		break;
	case CHELSIO_T4_CLEAR_STATS:
		rc = FUNC0(sc, *(uint32_t *)data);
		break;
	case CHELSIO_T4_SCHED_CLASS:
		rc = FUNC24(sc, (struct t4_sched_params *)data);
		break;
	case CHELSIO_T4_SCHED_QUEUE:
		rc = FUNC25(sc, (struct t4_sched_queue *)data);
		break;
	case CHELSIO_T4_GET_TRACER:
		rc = FUNC21(sc, (struct t4_tracer *)data);
		break;
	case CHELSIO_T4_SET_TRACER:
		rc = FUNC26(sc, (struct t4_tracer *)data);
		break;
	case CHELSIO_T4_LOAD_CFG:
		rc = FUNC11(sc, (struct t4_data *)data);
		break;
	case CHELSIO_T4_LOAD_BOOT:
		rc = FUNC9(sc, (struct t4_bootrom *)data);
		break;
	case CHELSIO_T4_LOAD_BOOTCFG:
		rc = FUNC10(sc, (struct t4_data *)data);
		break;
	case CHELSIO_T4_CUDBG_DUMP:
		rc = FUNC2(sc, (struct t4_cudbg_dump *)data);
		break;
	case CHELSIO_T4_SET_OFLD_POLICY:
		rc = FUNC19(sc, (struct t4_offload_policy *)data);
		break;
	default:
		rc = ENOTTY;
	}

	return (rc);
}