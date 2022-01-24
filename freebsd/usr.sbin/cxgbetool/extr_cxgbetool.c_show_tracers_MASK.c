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
struct TYPE_2__ {int port; int snap_len; int min_len; int skip_ofst; int* data; int* mask; int skip_len; scalar_t__ invert; } ;
struct t4_tracer {int idx; TYPE_1__ tp; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_GET_TRACER ; 
 int T4_TRACE_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,struct t4_tracer*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int,int,long long*) ; 

__attribute__((used)) static int
FUNC3(void)
{
	struct t4_tracer t;
	char *s;
	int rc, port_idx, i;
	long long val;

	/* Magic values: MPS_TRC_CFG = 0x9800. MPS_TRC_CFG[1:1] = TrcEn */
	rc = FUNC2(0x9800, 4, &val);
	if (rc != 0)
		return (rc);
	FUNC1("tracing is %s\n", val & 2 ? "ENABLED" : "DISABLED");

	t.idx = 0;
	for (t.idx = 0; ; t.idx++) {
		rc = FUNC0(CHELSIO_T4_GET_TRACER, &t);
		if (rc != 0 || t.idx == 0xff)
			break;

		if (t.tp.port < 4) {
			s = "Rx";
			port_idx = t.tp.port;
		} else if (t.tp.port < 8) {
			s = "Tx";
			port_idx = t.tp.port - 4;
		} else if (t.tp.port < 12) {
			s = "loopback";
			port_idx = t.tp.port - 8;
		} else if (t.tp.port < 16) {
			s = "MPS Rx";
			port_idx = t.tp.port - 12;
		} else if (t.tp.port < 20) {
			s = "MPS Tx";
			port_idx = t.tp.port - 16;
		} else {
			s = "unknown";
			port_idx = t.tp.port;
		}

		FUNC1("\ntracer %u (currently %s) captures ", t.idx,
		    t.enabled ? "ENABLED" : "DISABLED");
		if (t.tp.port < 8)
			FUNC1("port %u %s, ", port_idx, s);
		else
			FUNC1("%s %u, ", s, port_idx);
		FUNC1("snap length: %u, min length: %u\n", t.tp.snap_len,
		    t.tp.min_len);
		FUNC1("packets captured %smatch filter\n",
		    t.tp.invert ? "do not " : "");
		if (t.tp.skip_ofst) {
			FUNC1("filter pattern: ");
			for (i = 0; i < t.tp.skip_ofst * 2; i += 2)
				FUNC1("%08x%08x", t.tp.data[i],
				    t.tp.data[i + 1]);
			FUNC1("/");
			for (i = 0; i < t.tp.skip_ofst * 2; i += 2)
				FUNC1("%08x%08x", t.tp.mask[i],
				    t.tp.mask[i + 1]);
			FUNC1("@0\n");
		}
		FUNC1("filter pattern: ");
		for (i = t.tp.skip_ofst * 2; i < T4_TRACE_LEN / 4; i += 2)
			FUNC1("%08x%08x", t.tp.data[i], t.tp.data[i + 1]);
		FUNC1("/");
		for (i = t.tp.skip_ofst * 2; i < T4_TRACE_LEN / 4; i += 2)
			FUNC1("%08x%08x", t.tp.mask[i], t.tp.mask[i + 1]);
		FUNC1("@%u\n", (t.tp.skip_ofst + t.tp.skip_len) * 8);
	}

	return (rc);
}