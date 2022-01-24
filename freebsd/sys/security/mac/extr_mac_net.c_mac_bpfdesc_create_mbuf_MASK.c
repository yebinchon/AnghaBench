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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct bpf_d {int /*<<< orphan*/  bd_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_d*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bpf_d*,int /*<<< orphan*/ ,struct mbuf*,struct label*) ; 
 int /*<<< orphan*/  bpfdesc_create_mbuf ; 
 struct label* FUNC2 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 

void
FUNC3(struct bpf_d *d, struct mbuf *m)
{
	struct label *label;

	/* Assume reader lock is enough. */
	FUNC0(d);

	if (mac_policy_count == 0)
		return;

	label = FUNC2(m);

	FUNC1(bpfdesc_create_mbuf, d, d->bd_label, m,
	    label);
}