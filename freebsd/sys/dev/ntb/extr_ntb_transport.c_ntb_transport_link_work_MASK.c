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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct ntb_transport_qp {unsigned int mw_count; int qp_count; int link_is_up; int /*<<< orphan*/  link_work; int /*<<< orphan*/  link_width; int /*<<< orphan*/  link_speed; scalar_t__ client_ready; struct ntb_transport_qp* qp_vec; int /*<<< orphan*/  dev; struct ntb_transport_mw* mw_vec; scalar_t__ compact; } ;
struct ntb_transport_mw {int tx_size; int rx_size; int buff_size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  xlat_align_size; } ;
struct ntb_transport_ctx {unsigned int mw_count; int qp_count; int link_is_up; int /*<<< orphan*/  link_work; int /*<<< orphan*/  link_width; int /*<<< orphan*/  link_speed; scalar_t__ client_ready; struct ntb_transport_ctx* qp_vec; int /*<<< orphan*/  dev; struct ntb_transport_mw* mw_vec; scalar_t__ compact; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ NTBTC_MW0_SZ ; 
 scalar_t__ NTBTC_PARAMS ; 
 scalar_t__ NTBTC_QP_LINKS ; 
 scalar_t__ NTBT_MW0_SZ_HIGH ; 
 scalar_t__ NTBT_MW0_SZ_LOW ; 
 scalar_t__ NTBT_NUM_MWS ; 
 scalar_t__ NTBT_NUM_QPS ; 
 scalar_t__ NTBT_QP_LINKS ; 
 scalar_t__ NTBT_VERSION ; 
 int NTB_LINK_DOWN_TIMEOUT ; 
 int NTB_TRANSPORT_VERSION ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void (*) (void*),struct ntb_transport_qp*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_transport_qp*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 void FUNC7 (void*) ; 
 int FUNC8 (struct ntb_transport_qp*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct ntb_transport_qp*,unsigned int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct ntb_transport_ctx *nt = arg;
	struct ntb_transport_mw *mw;
	device_t dev = nt->dev;
	struct ntb_transport_qp *qp;
	uint64_t val64, size;
	uint32_t val;
	unsigned i;
	int rc;

	/* send the local info, in the opposite order of the way we read it */
	if (nt->compact) {
		for (i = 0; i < nt->mw_count; i++) {
			size = nt->mw_vec[i].tx_size;
			FUNC0(size <= UINT32_MAX, ("size too big (%jx)", size));
			FUNC5(dev, NTBTC_MW0_SZ + i, size);
		}
		FUNC5(dev, NTBTC_QP_LINKS, 0);
		FUNC5(dev, NTBTC_PARAMS,
		    (nt->qp_count << 24) | (nt->mw_count << 16) |
		    NTB_TRANSPORT_VERSION);
	} else {
		for (i = 0; i < nt->mw_count; i++) {
			size = nt->mw_vec[i].tx_size;
			FUNC5(dev, NTBT_MW0_SZ_HIGH + (i * 2),
			    size >> 32);
			FUNC5(dev, NTBT_MW0_SZ_LOW + (i * 2), size);
		}
		FUNC5(dev, NTBT_NUM_MWS, nt->mw_count);
		FUNC5(dev, NTBT_NUM_QPS, nt->qp_count);
		FUNC5(dev, NTBT_QP_LINKS, 0);
		FUNC5(dev, NTBT_VERSION, NTB_TRANSPORT_VERSION);
	}

	/* Query the remote side for its info */
	val = 0;
	if (nt->compact) {
		FUNC9(dev, NTBTC_PARAMS, &val);
		if (val != ((nt->qp_count << 24) | (nt->mw_count << 16) |
		    NTB_TRANSPORT_VERSION))
			goto out;
	} else {
		FUNC9(dev, NTBT_VERSION, &val);
		if (val != NTB_TRANSPORT_VERSION)
			goto out;

		FUNC9(dev, NTBT_NUM_QPS, &val);
		if (val != nt->qp_count)
			goto out;

		FUNC9(dev, NTBT_NUM_MWS, &val);
		if (val != nt->mw_count)
			goto out;
	}

	for (i = 0; i < nt->mw_count; i++) {
		if (nt->compact) {
			FUNC9(dev, NTBTC_MW0_SZ + i, &val);
			val64 = val;
		} else {
			FUNC9(dev, NTBT_MW0_SZ_HIGH + (i * 2), &val);
			val64 = (uint64_t)val << 32;

			FUNC9(dev, NTBT_MW0_SZ_LOW + (i * 2), &val);
			val64 |= val;
		}

		mw = &nt->mw_vec[i];
		mw->rx_size = val64;
		val64 = FUNC11(val64, mw->xlat_align_size);
		if (mw->buff_size != val64) {

			rc = FUNC8(nt, i, val64);
			if (rc != 0) {
				FUNC6(0, "link up set mw%d fails, rc %d\n",
				    i, rc);
				goto free_mws;
			}

			/* Notify HW the memory location of the receive buffer */
			rc = FUNC4(nt->dev, i, mw->dma_addr,
			    mw->buff_size);
			if (rc != 0) {
				FUNC6(0, "link up mw%d xlat fails, rc %d\n",
				     i, rc);
				goto free_mws;
			}
		}
	}

	nt->link_is_up = true;
	FUNC6(1, "transport link up\n");

	for (i = 0; i < nt->qp_count; i++) {
		qp = &nt->qp_vec[i];

		FUNC10(nt, i);

		if (qp->client_ready)
			FUNC1(&qp->link_work, 0, ntb_qp_link_work, qp);
	}

	return;

free_mws:
	for (i = 0; i < nt->mw_count; i++)
		FUNC2(nt, i);
out:
	if (FUNC3(dev, &nt->link_speed, &nt->link_width))
		FUNC1(&nt->link_work,
		    NTB_LINK_DOWN_TIMEOUT * hz / 1000, ntb_transport_link_work, nt);
}