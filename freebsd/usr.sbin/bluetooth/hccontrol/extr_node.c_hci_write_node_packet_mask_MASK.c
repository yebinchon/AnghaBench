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
struct ng_btsocket_hci_raw_node_packet_mask {int packet_mask; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int ERROR ; 
 int OK ; 
 int /*<<< orphan*/  SIOC_HCI_RAW_NODE_SET_PACKET_MASK ; 
 int USAGE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ng_btsocket_hci_raw_node_packet_mask*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ng_btsocket_hci_raw_node_packet_mask*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,char*,int*) ; 

int
FUNC3(int s, int argc, char **argv)
{
	struct ng_btsocket_hci_raw_node_packet_mask	r;
	int						m;

	FUNC1(&r, 0, sizeof(r));

	switch (argc) {
	case 1:
		if (FUNC2(argv[0], "%x", &m) != 1)
			return (USAGE);

		r.packet_mask = (m & 0xffff);
		break;

	default:
		return (USAGE);
	}

	if (FUNC0(s, SIOC_HCI_RAW_NODE_SET_PACKET_MASK, &r, sizeof(r)) < 0)
		return (ERROR);

	return (OK);
}