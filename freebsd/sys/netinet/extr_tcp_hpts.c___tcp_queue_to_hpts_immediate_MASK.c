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
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tcp_hpts_entry* FUNC2 (struct inpcb*) ; 
 int FUNC3 (struct inpcb*,struct tcp_hpts_entry*,int,int /*<<< orphan*/ ) ; 

int
FUNC4(struct inpcb *inp, int32_t line)
{
	int32_t ret;
	struct tcp_hpts_entry *hpts;

	FUNC0(inp);
	hpts = FUNC2(inp);
	ret = FUNC3(inp, hpts, line, 0);
	FUNC1(&hpts->p_mtx);
	return (ret);
}