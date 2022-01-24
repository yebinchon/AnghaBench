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
typedef  int /*<<< orphan*/  ng_hci_cmd_pkt_t ;

/* Variables and functions */
 int ERROR ; 
 int NG_HCI_CMD_PKT_SIZE ; 
 int OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char const*,int,int /*<<< orphan*/ ) ; 

int
FUNC2(int s, char const *buffer, int size)
{
	FUNC0(buffer != NULL);
	FUNC0(size >= sizeof(ng_hci_cmd_pkt_t));
	FUNC0(size <= sizeof(ng_hci_cmd_pkt_t) + NG_HCI_CMD_PKT_SIZE);

	if (FUNC1(s, buffer, size, 0) < 0)
		return (ERROR);

	return (OK);
}