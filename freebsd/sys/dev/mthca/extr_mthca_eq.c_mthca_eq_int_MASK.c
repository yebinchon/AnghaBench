#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int syndrome; int /*<<< orphan*/  cqn; } ;
struct TYPE_12__ {int /*<<< orphan*/  port; } ;
struct TYPE_11__ {int /*<<< orphan*/  out_param; int /*<<< orphan*/  status; int /*<<< orphan*/  token; } ;
struct TYPE_10__ {int /*<<< orphan*/  qpn; } ;
struct TYPE_9__ {int /*<<< orphan*/  srqn; } ;
struct TYPE_8__ {int /*<<< orphan*/  cqn; } ;
struct TYPE_14__ {TYPE_6__ cq_err; TYPE_5__ port_change; TYPE_4__ cmd; TYPE_3__ qp; TYPE_2__ srq; TYPE_1__ comp; } ;
struct mthca_eqe {int type; int subtype; TYPE_7__ event; } ;
struct mthca_eq {int /*<<< orphan*/  cons_index; int /*<<< orphan*/  eqn; } ;
struct mthca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_COMM_EST ; 
 int /*<<< orphan*/  IB_EVENT_CQ_ERR ; 
 int /*<<< orphan*/  IB_EVENT_PATH_MIG ; 
 int /*<<< orphan*/  IB_EVENT_PATH_MIG_ERR ; 
 int /*<<< orphan*/  IB_EVENT_QP_ACCESS_ERR ; 
 int /*<<< orphan*/  IB_EVENT_QP_FATAL ; 
 int /*<<< orphan*/  IB_EVENT_QP_LAST_WQE_REACHED ; 
 int /*<<< orphan*/  IB_EVENT_QP_REQ_ERR ; 
 int /*<<< orphan*/  IB_EVENT_SQ_DRAINED ; 
 int /*<<< orphan*/  IB_EVENT_SRQ_LIMIT_REACHED ; 
#define  MTHCA_EVENT_TYPE_CMD 145 
#define  MTHCA_EVENT_TYPE_COMM_EST 144 
#define  MTHCA_EVENT_TYPE_COMP 143 
#define  MTHCA_EVENT_TYPE_CQ_ERROR 142 
#define  MTHCA_EVENT_TYPE_ECC_DETECT 141 
#define  MTHCA_EVENT_TYPE_EEC_CATAS_ERROR 140 
#define  MTHCA_EVENT_TYPE_EQ_OVERFLOW 139 
#define  MTHCA_EVENT_TYPE_LOCAL_CATAS_ERROR 138 
#define  MTHCA_EVENT_TYPE_PATH_MIG 137 
#define  MTHCA_EVENT_TYPE_PATH_MIG_FAILED 136 
#define  MTHCA_EVENT_TYPE_PORT_CHANGE 135 
#define  MTHCA_EVENT_TYPE_SQ_DRAINED 134 
#define  MTHCA_EVENT_TYPE_SRQ_CATAS_ERROR 133 
#define  MTHCA_EVENT_TYPE_SRQ_LIMIT 132 
#define  MTHCA_EVENT_TYPE_SRQ_QP_LAST_WQE 131 
#define  MTHCA_EVENT_TYPE_WQ_ACCESS_ERROR 130 
#define  MTHCA_EVENT_TYPE_WQ_CATAS_ERROR 129 
#define  MTHCA_EVENT_TYPE_WQ_INVAL_REQ_ERROR 128 
 int MTHCA_NUM_SPARE_EQE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mthca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mthca_dev*,char*,...) ; 
 struct mthca_eqe* FUNC10 (struct mthca_eq*) ; 
 int /*<<< orphan*/  FUNC11 (struct mthca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct mthca_dev*,struct mthca_eq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mthca_eqe*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct mthca_dev *dev, struct mthca_eq *eq)
{
	struct mthca_eqe *eqe;
	int disarm_cqn;
	int eqes_found = 0;
	int set_ci = 0;

	while ((eqe = FUNC10(eq))) {
		/*
		 * Make sure we read EQ entry contents after we've
		 * checked the ownership bit.
		 */
		FUNC12();

		switch (eqe->type) {
		case MTHCA_EVENT_TYPE_COMP:
			disarm_cqn = FUNC1(eqe->event.comp.cqn) & 0xffffff;
			FUNC3(dev, eq->eqn, disarm_cqn);
			FUNC5(dev, disarm_cqn);
			break;

		case MTHCA_EVENT_TYPE_PATH_MIG:
			FUNC7(dev, FUNC1(eqe->event.qp.qpn) & 0xffffff,
				       IB_EVENT_PATH_MIG);
			break;

		case MTHCA_EVENT_TYPE_COMM_EST:
			FUNC7(dev, FUNC1(eqe->event.qp.qpn) & 0xffffff,
				       IB_EVENT_COMM_EST);
			break;

		case MTHCA_EVENT_TYPE_SQ_DRAINED:
			FUNC7(dev, FUNC1(eqe->event.qp.qpn) & 0xffffff,
				       IB_EVENT_SQ_DRAINED);
			break;

		case MTHCA_EVENT_TYPE_SRQ_QP_LAST_WQE:
			FUNC7(dev, FUNC1(eqe->event.qp.qpn) & 0xffffff,
				       IB_EVENT_QP_LAST_WQE_REACHED);
			break;

		case MTHCA_EVENT_TYPE_SRQ_LIMIT:
			FUNC8(dev, FUNC1(eqe->event.srq.srqn) & 0xffffff,
					IB_EVENT_SRQ_LIMIT_REACHED);
			break;

		case MTHCA_EVENT_TYPE_WQ_CATAS_ERROR:
			FUNC7(dev, FUNC1(eqe->event.qp.qpn) & 0xffffff,
				       IB_EVENT_QP_FATAL);
			break;

		case MTHCA_EVENT_TYPE_PATH_MIG_FAILED:
			FUNC7(dev, FUNC1(eqe->event.qp.qpn) & 0xffffff,
				       IB_EVENT_PATH_MIG_ERR);
			break;

		case MTHCA_EVENT_TYPE_WQ_INVAL_REQ_ERROR:
			FUNC7(dev, FUNC1(eqe->event.qp.qpn) & 0xffffff,
				       IB_EVENT_QP_REQ_ERR);
			break;

		case MTHCA_EVENT_TYPE_WQ_ACCESS_ERROR:
			FUNC7(dev, FUNC1(eqe->event.qp.qpn) & 0xffffff,
				       IB_EVENT_QP_ACCESS_ERR);
			break;

		case MTHCA_EVENT_TYPE_CMD:
			FUNC4(dev,
					FUNC0(eqe->event.cmd.token),
					eqe->event.cmd.status,
					FUNC2(eqe->event.cmd.out_param));
			break;

		case MTHCA_EVENT_TYPE_PORT_CHANGE:
			FUNC11(dev,
				    (FUNC1(eqe->event.port_change.port) >> 28) & 3,
				    eqe->subtype == 0x4);
			break;

		case MTHCA_EVENT_TYPE_CQ_ERROR:
			FUNC9(dev, "CQ %s on CQN %06x\n",
				   eqe->event.cq_err.syndrome == 1 ?
				   "overrun" : "access violation",
				   FUNC1(eqe->event.cq_err.cqn) & 0xffffff);
			FUNC6(dev, FUNC1(eqe->event.cq_err.cqn),
				       IB_EVENT_CQ_ERR);
			break;

		case MTHCA_EVENT_TYPE_EQ_OVERFLOW:
			FUNC9(dev, "EQ overrun on EQN %d\n", eq->eqn);
			break;

		case MTHCA_EVENT_TYPE_EEC_CATAS_ERROR:
		case MTHCA_EVENT_TYPE_SRQ_CATAS_ERROR:
		case MTHCA_EVENT_TYPE_LOCAL_CATAS_ERROR:
		case MTHCA_EVENT_TYPE_ECC_DETECT:
		default:
			FUNC9(dev, "Unhandled event %02x(%02x) on EQ %d\n",
				   eqe->type, eqe->subtype, eq->eqn);
			break;
		}

		FUNC14(eqe);
		++eq->cons_index;
		eqes_found = 1;
		++set_ci;

		/*
		 * The HCA will think the queue has overflowed if we
		 * don't tell it we've been processing events.  We
		 * create our EQs with MTHCA_NUM_SPARE_EQE extra
		 * entries, so we must update our consumer index at
		 * least that often.
		 */
		if (FUNC15(set_ci >= MTHCA_NUM_SPARE_EQE)) {
			/*
			 * Conditional on hca_type is OK here because
			 * this is a rare case, not the fast path.
			 */
			FUNC13(dev, eq, eq->cons_index);
			set_ci = 0;
		}
	}

	/*
	 * Rely on caller to set consumer index so that we don't have
	 * to test hca_type in our interrupt handling fast path.
	 */
	return eqes_found;
}