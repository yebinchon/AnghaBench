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
struct ifnet {int /*<<< orphan*/  if_label; } ;
struct bpf_d {int /*<<< orphan*/  bd_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct bpf_d*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bpf_d*,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpfdesc_check_receive ; 
 scalar_t__ mac_policy_count ; 

int
FUNC5(struct bpf_d *d, struct ifnet *ifp)
{
	int error, locked;

	/* Assume reader lock is enough. */
	FUNC0(d);

	if (mac_policy_count == 0)
		return (0);

	FUNC2(ifp, locked);
	FUNC4(bpfdesc_check_receive, d, d->bd_label, ifp,
	    ifp->if_label);
	FUNC1(bpfdesc_check_receive, error, d, ifp);
	FUNC3(ifp, locked);

	return (error);
}