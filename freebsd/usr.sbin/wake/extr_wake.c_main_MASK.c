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
typedef  int /*<<< orphan*/  ifname ;

/* Variables and functions */
 int IF_NAMESIZE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  _PATH_BPF ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 

int
FUNC9(int argc, char *argv[])
{
	int bpf, n, rval;
	char ifname[IF_NAMESIZE];

	if (argc < 2)
		FUNC6();

	if ((bpf = FUNC4(_PATH_BPF, O_RDWR)) == -1)
		FUNC1(1, "Cannot open bpf interface");

	n = 2;
	if (FUNC0(argv[1], bpf) == -1) {
		if (FUNC3(ifname, sizeof(ifname)))
			FUNC1(1, "Failed to determine ethernet interface");
		if (FUNC0(ifname, bpf) == -1)
			FUNC1(1, "Cannot bind to interface `%s'", ifname);
		--n;
	} else
		FUNC5(ifname, argv[1], sizeof(ifname));

	if (n >= argc)
		FUNC6();
	rval = 0;
	for (; n < argc; n++) {
		if (FUNC7(bpf, argv[n]) != 0) {
			rval = 1;
			FUNC8("Cannot send Wake on LAN frame over `%s' to `%s'",
			    ifname, argv[n]);
		}
	}
	FUNC2(rval);
}