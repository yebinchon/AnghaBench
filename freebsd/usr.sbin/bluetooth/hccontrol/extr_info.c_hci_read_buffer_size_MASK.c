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
typedef  int /*<<< orphan*/  rp ;
struct TYPE_2__ {int status; int max_sco_size; int /*<<< orphan*/  num_sco_pkt; int /*<<< orphan*/  num_acl_pkt; int /*<<< orphan*/  max_acl_size; } ;
typedef  TYPE_1__ ng_hci_read_buffer_size_rp ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int FAILED ; 
 int /*<<< orphan*/  NG_HCI_OCF_READ_BUFFER_SIZE ; 
 int /*<<< orphan*/  NG_HCI_OGF_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,char*,int*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC5(int s, int argc, char **argv)
{
	ng_hci_read_buffer_size_rp	rp;
	int				n;

	n = sizeof(rp);
	if (FUNC2(s, FUNC0(NG_HCI_OGF_INFO,
			NG_HCI_OCF_READ_BUFFER_SIZE),
			(char *) &rp, &n) == ERROR)
		return (ERROR);

	if (rp.status != 0x00) {
		FUNC1(stdout, "Status: %s [%#02x]\n", 
			FUNC3(rp.status), rp.status);
		return (FAILED);
	}

	FUNC1(stdout, "Max. ACL packet size: %d bytes\n",
		FUNC4(rp.max_acl_size));
	FUNC1(stdout, "Number of ACL packets: %d\n",
		FUNC4(rp.num_acl_pkt));
	FUNC1(stdout, "Max. SCO packet size: %d bytes\n",
		rp.max_sco_size);
	FUNC1(stdout, "Number of SCO packets: %d\n",
		FUNC4(rp.num_sco_pkt));
	
	return (OK);
}