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
struct sctp_laddr {int /*<<< orphan*/  ifa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_laddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sctp_laddr*) ; 
 int /*<<< orphan*/  ipi_zone_laddr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_nxt_addr ; 

__attribute__((used)) static void
FUNC5(struct sctp_laddr *laddr)
{

	/* remove from the list */
	FUNC0(laddr, sctp_nxt_addr);
	FUNC4(laddr->ifa);
	FUNC3(FUNC1(ipi_zone_laddr), laddr);
	FUNC2();
}