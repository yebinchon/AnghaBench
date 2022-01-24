#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace_params {int snap_len; scalar_t__ min_len; scalar_t__ skip_ofst; scalar_t__ skip_len; int invert; scalar_t__ port; int /*<<< orphan*/ * mask; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {int port; int snap_len; scalar_t__ min_len; scalar_t__ skip_len; scalar_t__ skip_ofst; int /*<<< orphan*/  invert; int /*<<< orphan*/ * mask; int /*<<< orphan*/ * data; } ;
struct t4_tracer {scalar_t__ valid; int /*<<< orphan*/  idx; int /*<<< orphan*/  enabled; TYPE_2__ tp; } ;
struct adapter {scalar_t__ tracer_valid; scalar_t__ tracer_enabled; TYPE_1__** port; } ;
struct TYPE_3__ {scalar_t__ tx_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MPS_TRC_CFG ; 
 int EINVAL ; 
 int /*<<< orphan*/  F_TRCEN ; 
 int HOLD_LOCK ; 
 int INTR_OK ; 
 int /*<<< orphan*/  LOCK_HELD ; 
 scalar_t__ M_TFLENGTH ; 
 scalar_t__ M_TFMINPKTSIZE ; 
 scalar_t__ M_TFOFFSET ; 
 int /*<<< orphan*/  NTRACE ; 
 int SLEEP_OK ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct adapter*,struct trace_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct adapter *sc, struct t4_tracer *t)
{
	int rc;
	struct trace_params tp, *tpp;

	if (t->idx >= NTRACE)
		return (EINVAL);

	rc = FUNC0(sc, NULL, HOLD_LOCK | SLEEP_OK | INTR_OK,
	    "t4sett");
	if (rc)
		return (rc);

	/*
	 * If no tracing filter is specified this time then check if the filter
	 * at the index is valid anyway because it was set previously.  If so
	 * then this is a legitimate enable/disable operation.
	 */
	if (t->valid == 0) {
		if (FUNC3(&sc->tracer_valid, t->idx))
			tpp = NULL;
		else
			rc = EINVAL;
		goto done;
	}

	if (t->tp.port > 19 || t->tp.snap_len > 9600 ||
	    t->tp.min_len > M_TFMINPKTSIZE || t->tp.skip_len > M_TFLENGTH ||
	    t->tp.skip_ofst > M_TFOFFSET) {
		rc = EINVAL;
		goto done;
	}

	FUNC4(&tp.data[0], &t->tp.data[0], sizeof(tp.data));
	FUNC4(&tp.mask[0], &t->tp.mask[0], sizeof(tp.mask));
	tp.snap_len = t->tp.snap_len;
	tp.min_len = t->tp.min_len;
	tp.skip_ofst = t->tp.skip_ofst;
	tp.skip_len = t->tp.skip_len;
	tp.invert = !!t->tp.invert;

	/* convert port to channel iff 0 <= port < 8. */
	if (t->tp.port < 4) {
		if (sc->port[t->tp.port] == NULL) {
			rc = EINVAL;
			goto done;
		}
		tp.port = sc->port[t->tp.port]->tx_chan;
	} else if (t->tp.port < 8) {
		if (sc->port[t->tp.port - 4] == NULL) {
			rc = EINVAL;
			goto done;
		}
		tp.port = sc->port[t->tp.port - 4]->tx_chan + 4;
	}
	tpp = &tp;
done:
	if (rc == 0) {
		rc = -FUNC7(sc, tpp, t->idx, t->enabled);
		if (rc == 0) {
			if (t->enabled) {
				FUNC5(&sc->tracer_valid, t->idx);
				if (sc->tracer_enabled == 0) {
					FUNC6(sc, A_MPS_TRC_CFG,
					    F_TRCEN, F_TRCEN);
				}
				FUNC5(&sc->tracer_enabled, t->idx);
			} else {
				FUNC1(&sc->tracer_enabled, t->idx);
				if (sc->tracer_enabled == 0) {
					FUNC6(sc, A_MPS_TRC_CFG,
					    F_TRCEN, 0);
				}
			}
		}
	}
	FUNC2(sc, LOCK_HELD);

	return (rc);
}