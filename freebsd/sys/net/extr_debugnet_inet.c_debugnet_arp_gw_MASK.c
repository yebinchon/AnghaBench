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
struct debugnet_pcb {scalar_t__ dp_server; scalar_t__ dp_state; scalar_t__ dp_gateway; } ;
typedef  scalar_t__ in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DN_STATE_HAVE_GW_MAC ; 
 int ETIMEDOUT ; 
 scalar_t__ INADDR_ANY ; 
 int debugnet_arp_nretries ; 
 int /*<<< orphan*/  FUNC1 (struct debugnet_pcb*) ; 
 int debugnet_npolls ; 
 int FUNC2 (struct debugnet_pcb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(struct debugnet_pcb *pcb)
{
	in_addr_t dst;
	int error, polls, retries;

	dst = pcb->dp_server;
restart:
	for (retries = 0; retries < debugnet_arp_nretries; retries++) {
		error = FUNC2(pcb, dst);
		if (error != 0)
			return (error);
		for (polls = 0; polls < debugnet_npolls &&
		    pcb->dp_state < DN_STATE_HAVE_GW_MAC; polls++) {
			FUNC1(pcb);
			FUNC0(500);
		}
		if (pcb->dp_state >= DN_STATE_HAVE_GW_MAC)
			break;
		FUNC3("(ARP retry)");
	}
	if (pcb->dp_state >= DN_STATE_HAVE_GW_MAC)
		return (0);
	if (dst == pcb->dp_server) {
		FUNC3("\nFailed to ARP server");
		if (pcb->dp_gateway != INADDR_ANY) {
			FUNC3(", trying to reach gateway...\n");
			dst = pcb->dp_gateway;
			goto restart;
		} else
			FUNC3(".\n");
	} else
		FUNC3("\nFailed to ARP gateway.\n");

	return (ETIMEDOUT);
}