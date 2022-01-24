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
struct tcp_hpts_entry {int /*<<< orphan*/  p_mtx; } ;
struct inpcb {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int HPTS_REMOVE_INPUT ; 
 int HPTS_REMOVE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tcp_hpts_entry* FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_hpts_entry*,struct inpcb*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_hpts_entry*,struct inpcb*,int,int) ; 
 struct tcp_hpts_entry* FUNC5 (struct inpcb*) ; 

void
FUNC6(struct inpcb *inp, int32_t flags, int32_t line)
{
	struct tcp_hpts_entry *hpts;

	FUNC0(inp);
	if (flags & HPTS_REMOVE_OUTPUT) {
		hpts = FUNC2(inp);
		FUNC4(hpts, inp, flags, line);
		FUNC1(&hpts->p_mtx);
	}
	if (flags & HPTS_REMOVE_INPUT) {
		hpts = FUNC5(inp);
		FUNC3(hpts, inp, flags, line);
		FUNC1(&hpts->p_mtx);
	}
}