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
struct trace_params {int port; int /*<<< orphan*/  invert; int /*<<< orphan*/  skip_len; int /*<<< orphan*/  skip_ofst; int /*<<< orphan*/  min_len; int /*<<< orphan*/  snap_len; int /*<<< orphan*/ * mask; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int port; int /*<<< orphan*/  invert; int /*<<< orphan*/  skip_len; int /*<<< orphan*/  skip_ofst; int /*<<< orphan*/  min_len; int /*<<< orphan*/  snap_len; int /*<<< orphan*/ * mask; int /*<<< orphan*/ * data; } ;
struct t4_tracer {int idx; int enabled; int valid; TYPE_1__ tp; } ;
struct adapter {int* chan_map; int /*<<< orphan*/  tracer_valid; } ;

/* Variables and functions */
 int HOLD_LOCK ; 
 int INTR_OK ; 
 int /*<<< orphan*/  LOCK_HELD ; 
 int NTRACE ; 
 int SLEEP_OK ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,struct trace_params*,int,int*) ; 

int
FUNC5(struct adapter *sc, struct t4_tracer *t)
{
	int rc, i, enabled;
	struct trace_params tp;

	if (t->idx >= NTRACE) {
		t->idx = 0xff;
		t->enabled = 0;
		t->valid = 0;
		return (0);
	}

	rc = FUNC0(sc, NULL, HOLD_LOCK | SLEEP_OK | INTR_OK,
	    "t4gett");
	if (rc)
		return (rc);

	for (i = t->idx; i < NTRACE; i++) {
		if (FUNC2(&sc->tracer_valid, t->idx)) {
			FUNC4(sc, &tp, i, &enabled);
			t->idx = i;
			t->enabled = enabled;
			t->valid = 1;
			FUNC3(&t->tp.data[0], &tp.data[0], sizeof(t->tp.data));
			FUNC3(&t->tp.mask[0], &tp.mask[0], sizeof(t->tp.mask));
			t->tp.snap_len = tp.snap_len;
			t->tp.min_len = tp.min_len;
			t->tp.skip_ofst = tp.skip_ofst;
			t->tp.skip_len = tp.skip_len;
			t->tp.invert = tp.invert;

			/* convert channel to port iff 0 <= port < 8. */
			if (tp.port < 4)
				t->tp.port = sc->chan_map[tp.port];
			else if (tp.port < 8)
				t->tp.port = sc->chan_map[tp.port - 4] + 4;
			else
				t->tp.port = tp.port;

			goto done;
		}
	}

	t->idx = 0xff;
	t->enabled = 0;
	t->valid = 0;
done:
	FUNC1(sc, LOCK_HELD);

	return (rc);
}