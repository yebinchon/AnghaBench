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
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  trace ;
struct ch_trace {int config_tx; int config_rx; int trace_tx; int trace_rx; int invert_match; void* proto_mask; void* proto; void* vlan_mask; void* vlan; void* dport_mask; void* dport; void* sport_mask; void* sport; void* dip_mask; void* dip; void* sip_mask; void* sip; void* intf_mask; void* intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_SET_TRACE_FILTER ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,struct ch_trace*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ch_trace*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,void**,void**) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(int argc, char *argv[], int start_arg, const char *iff_name)
{
	uint32_t val, mask;
	struct ch_trace trace;

	if (argc == start_arg)
		return -1;

	FUNC3(&trace, 0, sizeof(trace));
	if (!FUNC5(argv[start_arg], "tx"))
		trace.config_tx = 1;
	else if (!FUNC5(argv[start_arg], "rx"))
		trace.config_rx = 1;
	else if (!FUNC5(argv[start_arg], "all"))
		trace.config_tx = trace.config_rx = 1;
	else
		FUNC2(1, "bad trace filter \"%s\"; must be one of \"rx\", "
		     "\"tx\" or \"all\"", argv[start_arg]);

	if (argc == ++start_arg)
		return -1;
	if (!FUNC5(argv[start_arg], "on")) {
		trace.trace_tx = trace.config_tx;
		trace.trace_rx = trace.config_rx;
	} else if (FUNC5(argv[start_arg], "off"))
		FUNC2(1, "bad argument \"%s\"; must be \"on\" or \"off\"",
		     argv[start_arg]);

	start_arg++;
	if (start_arg < argc && !FUNC5(argv[start_arg], "not")) {
		trace.invert_match = 1;
		start_arg++;
	}

	while (start_arg + 2 <= argc) {
		int ret = FUNC4(argv[start_arg + 1], &val, &mask);

		if (!FUNC5(argv[start_arg], "interface")) {
			trace.intf = val;
			trace.intf_mask = mask;
		} else if (!FUNC5(argv[start_arg], "sip")) {
			trace.sip = val;
			trace.sip_mask = mask;
		} else if (!FUNC5(argv[start_arg], "dip")) {
			trace.dip = val;
			trace.dip_mask = mask;
		} else if (!FUNC5(argv[start_arg], "sport")) {
			trace.sport = val;
			trace.sport_mask = mask;
		} else if (!FUNC5(argv[start_arg], "dport")) {
			trace.dport = val;
			trace.dport_mask = mask;
		} else if (!FUNC5(argv[start_arg], "vlan")) {
			trace.vlan = val;
			trace.vlan_mask = mask;
		} else if (!FUNC5(argv[start_arg], "proto")) {
			trace.proto = val;
			trace.proto_mask = mask;
		} else
			FUNC2(1, "unknown trace parameter \"%s\"\n"
			     "known parameters are \"interface\", \"sip\", "
			     "\"dip\", \"sport\", \"dport\", \"vlan\", "
			     "\"proto\"", argv[start_arg]);
		if (ret < 0)
			FUNC2(1, "bad parameter \"%s\"", argv[start_arg + 1]);
		start_arg += 2;
	}
	if (start_arg != argc)
		FUNC2(1, "unknown parameter \"%s\"", argv[start_arg]);

	if (FUNC0(iff_name, CHELSIO_SET_TRACE_FILTER, &trace) < 0)
		FUNC1(1, "trace");
	return 0;
}