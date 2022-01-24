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
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr {int dummy; } ;
struct sctp_ifa {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_ADDR_NOT_LOCKED ; 
 struct sctp_ifa* FUNC0 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct sockaddr *addr, uint32_t vrf_id)
{
	struct sctp_ifa *sctp_ifa;

	sctp_ifa = FUNC0(addr, vrf_id, SCTP_ADDR_NOT_LOCKED);
	if (sctp_ifa) {
		return (1);
	} else {
		return (0);
	}
}