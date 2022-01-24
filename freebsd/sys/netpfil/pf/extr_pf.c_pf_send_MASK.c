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
struct pf_send_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pf_send_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pf_sendqueue ; 
 int /*<<< orphan*/  V_pf_swi_cookie ; 
 int /*<<< orphan*/  pfse_next ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct pf_send_entry *pfse)
{

	FUNC0();
	FUNC2(&V_pf_sendqueue, pfse, pfse_next);
	FUNC1();
	FUNC3(V_pf_swi_cookie, 0);
}