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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct timeval {int dummy; } ;
struct sctp_inpcb {int /*<<< orphan*/  sctp_ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

uint32_t
FUNC3(struct sctp_inpcb *inp, uint16_t lport, uint16_t rport, int check)
{
	uint32_t x;
	struct timeval now;

	if (check) {
		(void)FUNC0(&now);
	}
	for (;;) {
		x = FUNC2(&inp->sctp_ep);
		if (x == 0) {
			/* we never use 0 */
			continue;
		}
		if (!check || FUNC1(x, lport, rport, &now)) {
			break;
		}
	}
	return (x);
}