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
struct dn_fsk_head {int dummy; } ;
struct dn_fsk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 struct dn_fsk* FUNC1 (struct dn_fsk_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct dn_fsk_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dn_fsk*,int) ; 
 int /*<<< orphan*/  sch_chain ; 

__attribute__((used)) static void
FUNC4(struct dn_fsk_head *h, int flags)
{
	struct dn_fsk *fs;
	int n = 0; /* only for stats */

	FUNC0("head %p flags %x", h, flags);
	while ((fs = FUNC1(h))) {
		FUNC2(h, sch_chain);
		n++;
		FUNC3(fs, flags);
	}
	FUNC0("done %d flowsets", n);
}