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
struct nmreq {char* nr_name; int nr_cmd; int nr_arg2; int nr_arg1; int nr_tx_rings; char* nr_rx_rings; int /*<<< orphan*/  nr_flags; int /*<<< orphan*/  nr_rx_slots; int /*<<< orphan*/  nr_ringid; int /*<<< orphan*/  nr_tx_slots; int /*<<< orphan*/  nr_version; } ;
typedef  int /*<<< orphan*/  nmr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  NETMAP_API ; 
#define  NETMAP_BDG_ATTACH 134 
#define  NETMAP_BDG_DELIF 133 
#define  NETMAP_BDG_DETACH 132 
 int NETMAP_BDG_HOST ; 
#define  NETMAP_BDG_LIST 131 
#define  NETMAP_BDG_NEWIF 130 
#define  NETMAP_BDG_POLLING_OFF 129 
#define  NETMAP_BDG_POLLING_ON 128 
 int /*<<< orphan*/  NIOCGINFO ; 
 int /*<<< orphan*/  NIOCREGIF ; 
 int /*<<< orphan*/  NR_REG_ALL_NIC ; 
 int /*<<< orphan*/  NR_REG_NIC_SW ; 
 int /*<<< orphan*/  NR_REG_ONE_NIC ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC2 (struct nmreq*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct nmreq*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct nmreq*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC10(const char *name, int nr_cmd, int nr_arg, char *nmr_config, int nr_arg2)
{
	struct nmreq nmr;
	int error = 0;
	int fd = FUNC5("/dev/netmap", O_RDWR);

	if (fd == -1) {
		FUNC0("Unable to open /dev/netmap");
		return -1;
	}

	FUNC2(&nmr, sizeof(nmr));
	nmr.nr_version = NETMAP_API;
	if (name != NULL) /* might be NULL */
		FUNC9(nmr.nr_name, name, sizeof(nmr.nr_name)-1);
	nmr.nr_cmd = nr_cmd;
	FUNC6(nmr_config, &nmr);
	nmr.nr_arg2 = nr_arg2;

	switch (nr_cmd) {
	case NETMAP_BDG_DELIF:
	case NETMAP_BDG_NEWIF:
		error = FUNC4(fd, NIOCREGIF, &nmr);
		if (error == -1) {
			FUNC1("Unable to %s %s", nr_cmd == NETMAP_BDG_DELIF ? "delete":"create", name);
			FUNC7(name);
		} else {
			FUNC1("Success to %s %s", nr_cmd == NETMAP_BDG_DELIF ? "delete":"create", name);
		}
		break;
	case NETMAP_BDG_ATTACH:
	case NETMAP_BDG_DETACH:
		nmr.nr_flags = NR_REG_ALL_NIC;
		if (nr_arg && nr_arg != NETMAP_BDG_HOST) {
			nmr.nr_flags = NR_REG_NIC_SW;
			nr_arg = 0;
		}
		nmr.nr_arg1 = nr_arg;
		error = FUNC4(fd, NIOCREGIF, &nmr);
		if (error == -1) {
			FUNC1("Unable to %s %s to the bridge", nr_cmd ==
			    NETMAP_BDG_DETACH?"detach":"attach", name);
			FUNC7(name);
		} else
			FUNC1("Success to %s %s to the bridge", nr_cmd ==
			    NETMAP_BDG_DETACH?"detach":"attach", name);
		break;

	case NETMAP_BDG_LIST:
		if (FUNC8(nmr.nr_name)) { /* name to bridge/port info */
			error = FUNC4(fd, NIOCGINFO, &nmr);
			if (error) {
				FUNC1("Unable to obtain info for %s", name);
				FUNC7(name);
			} else
				FUNC0("%s at bridge:%d port:%d", name, nmr.nr_arg1,
				    nmr.nr_arg2);
			break;
		}

		/* scan all the bridges and ports */
		nmr.nr_arg1 = nmr.nr_arg2 = 0;
		for (; !FUNC4(fd, NIOCGINFO, &nmr); nmr.nr_arg2++) {
			FUNC0("bridge:%d port:%d %s", nmr.nr_arg1, nmr.nr_arg2,
			    nmr.nr_name);
			nmr.nr_name[0] = '\0';
		}

		break;

	case NETMAP_BDG_POLLING_ON:
	case NETMAP_BDG_POLLING_OFF:
		/* We reuse nmreq fields as follows:
		 *   nr_tx_slots: 0 and non-zero indicate REG_ALL_NIC
		 *                REG_ONE_NIC, respectively.
		 *   nr_rx_slots: CPU core index. This also indicates the
		 *                first queue in the case of REG_ONE_NIC
		 *   nr_tx_rings: (REG_ONE_NIC only) indicates the
		 *                number of CPU cores or the last queue
		 */
		nmr.nr_flags |= nmr.nr_tx_slots ?
			NR_REG_ONE_NIC : NR_REG_ALL_NIC;
		nmr.nr_ringid = nmr.nr_rx_slots;
		/* number of cores/rings */
		if (nmr.nr_flags == NR_REG_ALL_NIC)
			nmr.nr_arg1 = 1;
		else
			nmr.nr_arg1 = nmr.nr_tx_rings;

		error = FUNC4(fd, NIOCREGIF, &nmr);
		if (!error)
			FUNC0("polling on %s %s", nmr.nr_name,
				nr_cmd == NETMAP_BDG_POLLING_ON ?
				"started" : "stopped");
		else
			FUNC0("polling on %s %s (err %d)", nmr.nr_name,
				nr_cmd == NETMAP_BDG_POLLING_ON ?
				"couldn't start" : "couldn't stop", error);
		break;

	default: /* GINFO */
		nmr.nr_cmd = nmr.nr_arg1 = nmr.nr_arg2 = 0;
		error = FUNC4(fd, NIOCGINFO, &nmr);
		if (error) {
			FUNC1("Unable to get if info for %s", name);
			FUNC7(name);
		} else
			FUNC0("%s: %d queues.", name, nmr.nr_rx_rings);
		break;
	}
	FUNC3(fd);
	return error;
}