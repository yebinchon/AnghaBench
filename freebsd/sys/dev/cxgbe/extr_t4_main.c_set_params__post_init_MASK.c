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
typedef  int uint32_t ;
struct TYPE_2__ {int port_caps32; } ;
struct adapter {TYPE_1__ params; int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 scalar_t__ A_TP_KEEP_IDLE ; 
 scalar_t__ A_TP_KEEP_INTVL ; 
 scalar_t__ A_TP_RSS_CONFIG_TNL ; 
 scalar_t__ A_TP_RXT_MAX ; 
 scalar_t__ A_TP_RXT_MIN ; 
 scalar_t__ A_TP_SHIFT_CNT ; 
 scalar_t__ A_TP_TCP_BACKOFF_REG0 ; 
 int /*<<< orphan*/  CPLFW4MSG_ENCAP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int M_KEEPALIVEIDLE ; 
 int M_KEEPALIVEINTVL ; 
 int M_KEEPALIVEMAXR1 ; 
 int M_KEEPALIVEMAXR2 ; 
 int M_MASKFILTER ; 
 int M_RXTMAX ; 
 int M_RXTMIN ; 
 int M_RXTSHIFTMAXR1 ; 
 int M_RXTSHIFTMAXR2 ; 
 int M_TIMERBACKOFFINDEX0 ; 
 int /*<<< orphan*/  PORT_CAPS32 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,scalar_t__,int,int) ; 
 int t4_toe_keepalive_count ; 
 scalar_t__ t4_toe_keepalive_idle ; 
 scalar_t__ t4_toe_keepalive_interval ; 
 int* t4_toe_rexmt_backoff ; 
 int t4_toe_rexmt_count ; 
 scalar_t__ t4_toe_rexmt_max ; 
 scalar_t__ t4_toe_rexmt_min ; 
 int FUNC15 (struct adapter*,scalar_t__) ; 

__attribute__((used)) static int
FUNC16(struct adapter *sc)
{
	uint32_t param, val;
#ifdef TCP_OFFLOAD
	int i, v, shift;
#endif

	/* ask for encapsulated CPLs */
	param = FUNC0(CPLFW4MSG_ENCAP);
	val = 1;
	(void)FUNC13(sc, sc->mbox, sc->pf, 0, 1, &param, &val);

	/* Enable 32b port caps if the firmware supports it. */
	param = FUNC0(PORT_CAPS32);
	val = 1;
	if (FUNC13(sc, sc->mbox, sc->pf, 0, 1, &param, &val) == 0)
		sc->params.port_caps32 = 1;

	/* Let filter + maskhash steer to a part of the VI's RSS region. */
	val = 1 << (FUNC1(FUNC12(sc, A_TP_RSS_CONFIG_TNL)) - 1);
	FUNC14(sc, A_TP_RSS_CONFIG_TNL, FUNC6(M_MASKFILTER),
	    FUNC6(val - 1));

#ifdef TCP_OFFLOAD
	/*
	 * Override the TOE timers with user provided tunables.  This is not the
	 * recommended way to change the timers (the firmware config file is) so
	 * these tunables are not documented.
	 *
	 * All the timer tunables are in microseconds.
	 */
	if (t4_toe_keepalive_idle != 0) {
		v = us_to_tcp_ticks(sc, t4_toe_keepalive_idle);
		v &= M_KEEPALIVEIDLE;
		t4_set_reg_field(sc, A_TP_KEEP_IDLE,
		    V_KEEPALIVEIDLE(M_KEEPALIVEIDLE), V_KEEPALIVEIDLE(v));
	}
	if (t4_toe_keepalive_interval != 0) {
		v = us_to_tcp_ticks(sc, t4_toe_keepalive_interval);
		v &= M_KEEPALIVEINTVL;
		t4_set_reg_field(sc, A_TP_KEEP_INTVL,
		    V_KEEPALIVEINTVL(M_KEEPALIVEINTVL), V_KEEPALIVEINTVL(v));
	}
	if (t4_toe_keepalive_count != 0) {
		v = t4_toe_keepalive_count & M_KEEPALIVEMAXR2;
		t4_set_reg_field(sc, A_TP_SHIFT_CNT,
		    V_KEEPALIVEMAXR1(M_KEEPALIVEMAXR1) |
		    V_KEEPALIVEMAXR2(M_KEEPALIVEMAXR2),
		    V_KEEPALIVEMAXR1(1) | V_KEEPALIVEMAXR2(v));
	}
	if (t4_toe_rexmt_min != 0) {
		v = us_to_tcp_ticks(sc, t4_toe_rexmt_min);
		v &= M_RXTMIN;
		t4_set_reg_field(sc, A_TP_RXT_MIN,
		    V_RXTMIN(M_RXTMIN), V_RXTMIN(v));
	}
	if (t4_toe_rexmt_max != 0) {
		v = us_to_tcp_ticks(sc, t4_toe_rexmt_max);
		v &= M_RXTMAX;
		t4_set_reg_field(sc, A_TP_RXT_MAX,
		    V_RXTMAX(M_RXTMAX), V_RXTMAX(v));
	}
	if (t4_toe_rexmt_count != 0) {
		v = t4_toe_rexmt_count & M_RXTSHIFTMAXR2;
		t4_set_reg_field(sc, A_TP_SHIFT_CNT,
		    V_RXTSHIFTMAXR1(M_RXTSHIFTMAXR1) |
		    V_RXTSHIFTMAXR2(M_RXTSHIFTMAXR2),
		    V_RXTSHIFTMAXR1(1) | V_RXTSHIFTMAXR2(v));
	}
	for (i = 0; i < nitems(t4_toe_rexmt_backoff); i++) {
		if (t4_toe_rexmt_backoff[i] != -1) {
			v = t4_toe_rexmt_backoff[i] & M_TIMERBACKOFFINDEX0;
			shift = (i & 3) << 3;
			t4_set_reg_field(sc, A_TP_TCP_BACKOFF_REG0 + (i & ~3),
			    M_TIMERBACKOFFINDEX0 << shift, v << shift);
		}
	}
#endif
	return (0);
}