#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tp_params {int* tx_modq; void* err_vec_mask; int /*<<< orphan*/  dack_re; int /*<<< orphan*/  tre; } ;
struct TYPE_2__ {struct tp_params tp; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_OUT_CONFIG ; 
 int /*<<< orphan*/  A_TP_TIMER_RESOLUTION ; 
 scalar_t__ CHELSIO_T5 ; 
 int F_CRXPKTENC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MAX_NCHAN ; 
 int /*<<< orphan*/  M_T6_COMPR_RXERR_VEC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 

int FUNC7(struct adapter *adap, bool sleep_ok)
{
	int chan;
	u32 v;
	struct tp_params *tpp = &adap->params.tp;

	v = FUNC6(adap, A_TP_TIMER_RESOLUTION);
	tpp->tre = FUNC1(v);
	tpp->dack_re = FUNC0(v);

	/* MODQ_REQ_MAP defaults to setting queues 0-3 to chan 0-3 */
	for (chan = 0; chan < MAX_NCHAN; chan++)
		tpp->tx_modq[chan] = chan;

	FUNC5(adap, sleep_ok);

	/*
	 * Cache a mask of the bits that represent the error vector portion of
	 * rx_pkt.err_vec.  T6+ can use a compressed error vector to make room
	 * for information about outer encapsulation (GENEVE/VXLAN/NVGRE).
	 */
	tpp->err_vec_mask = FUNC4(0xffff);
	if (FUNC3(adap) > CHELSIO_T5) {
		v = FUNC6(adap, A_TP_OUT_CONFIG);
		if (v & F_CRXPKTENC) {
			tpp->err_vec_mask =
			    FUNC4(FUNC2(M_T6_COMPR_RXERR_VEC));
		}
	}

	return 0;
}