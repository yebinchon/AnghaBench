#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int uint16_t ;
struct cmpl_base {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {scalar_t__ vaddr; } ;
struct bnxt_cp_ring {size_t cons; int v_bit; TYPE_1__ ring; } ;
struct bnxt_softc {int /*<<< orphan*/  dev; struct bnxt_cp_ring def_cp_ring; } ;
typedef  void* if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
#define  CMPL_BASE_TYPE_CQ_NOTIFICATION 142 
#define  CMPL_BASE_TYPE_DBQ_EVENT 141 
#define  CMPL_BASE_TYPE_FUNC_EVENT 140 
#define  CMPL_BASE_TYPE_HWRM_ASYNC_EVENT 139 
#define  CMPL_BASE_TYPE_HWRM_DONE 138 
#define  CMPL_BASE_TYPE_HWRM_FWD_REQ 137 
#define  CMPL_BASE_TYPE_HWRM_FWD_RESP 136 
 int CMPL_BASE_TYPE_MASK ; 
#define  CMPL_BASE_TYPE_QP_EVENT 135 
#define  CMPL_BASE_TYPE_RX_AGG 134 
#define  CMPL_BASE_TYPE_RX_L2 133 
#define  CMPL_BASE_TYPE_RX_TPA_END 132 
#define  CMPL_BASE_TYPE_RX_TPA_START 131 
#define  CMPL_BASE_TYPE_SRQ_EVENT 130 
#define  CMPL_BASE_TYPE_STAT_EJECT 129 
#define  CMPL_BASE_TYPE_TX_L2 128 
 int /*<<< orphan*/  FUNC1 (struct cmpl_base*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct cmpl_base*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct bnxt_softc* FUNC5 (void*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *context)
{
	if_ctx_t ctx = context;
	struct bnxt_softc *softc = FUNC5(ctx);
	struct bnxt_cp_ring *cpr = &softc->def_cp_ring;

	/* Handle completions on the default completion ring */
	struct cmpl_base *cmpl;
	uint32_t cons = cpr->cons;
	bool v_bit = cpr->v_bit;
	bool last_v_bit;
	uint32_t last_cons;
	uint16_t type;

	for (;;) {
		last_cons = cons;
		last_v_bit = v_bit;
		FUNC2(&cpr->ring, cons, v_bit);
		cmpl = &((struct cmpl_base *)cpr->ring.vaddr)[cons];

		if (!FUNC1(cmpl, v_bit))
			break;

		type = FUNC6(cmpl->type) & CMPL_BASE_TYPE_MASK;
		switch (type) {
		case CMPL_BASE_TYPE_HWRM_ASYNC_EVENT:
			FUNC3(softc, cmpl);
			break;
		case CMPL_BASE_TYPE_TX_L2:
		case CMPL_BASE_TYPE_RX_L2:
		case CMPL_BASE_TYPE_RX_AGG:
		case CMPL_BASE_TYPE_RX_TPA_START:
		case CMPL_BASE_TYPE_RX_TPA_END:
		case CMPL_BASE_TYPE_STAT_EJECT:
		case CMPL_BASE_TYPE_HWRM_DONE:
		case CMPL_BASE_TYPE_HWRM_FWD_REQ:
		case CMPL_BASE_TYPE_HWRM_FWD_RESP:
		case CMPL_BASE_TYPE_CQ_NOTIFICATION:
		case CMPL_BASE_TYPE_SRQ_EVENT:
		case CMPL_BASE_TYPE_DBQ_EVENT:
		case CMPL_BASE_TYPE_QP_EVENT:
		case CMPL_BASE_TYPE_FUNC_EVENT:
			FUNC4(softc->dev,
			    "Unhandled completion type %u\n", type);
			break;
		default:
			FUNC4(softc->dev,
			    "Unknown completion type %u\n", type);
			break;
		}
	}

	cpr->cons = last_cons;
	cpr->v_bit = last_v_bit;
	FUNC0(&cpr->ring, cpr->cons);
}