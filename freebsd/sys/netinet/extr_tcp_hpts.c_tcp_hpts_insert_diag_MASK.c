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
struct timeval {int dummy; } ;
struct tcp_hpts_entry {int /*<<< orphan*/  p_mtx; int /*<<< orphan*/  p_nxt_slot; } ;
struct inpcb {int dummy; } ;
struct hpts_diag {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_hpts_entry*,struct inpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hpts_diag*,struct timeval*) ; 
 struct tcp_hpts_entry* FUNC4 (struct inpcb*) ; 

uint32_t
FUNC5(struct inpcb *inp, uint32_t slot, int32_t line, struct hpts_diag *diag)
{
	struct tcp_hpts_entry *hpts;
	uint32_t slot_on;
	struct timeval tv;

	/*
	 * We now return the next-slot the hpts will be on, beyond its
	 * current run (if up) or where it was when it stopped if it is
	 * sleeping.
	 */
	FUNC0(inp);
	hpts = FUNC4(inp);
	FUNC1(&tv);
	FUNC3(hpts, inp, slot, line, diag, &tv);
	slot_on = hpts->p_nxt_slot;
	FUNC2(&hpts->p_mtx);
	return (slot_on);
}