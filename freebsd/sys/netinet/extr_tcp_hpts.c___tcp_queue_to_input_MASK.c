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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inpcb*,struct tcp_hpts_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tcp_hpts_entry* FUNC2 (struct inpcb*) ; 

int32_t
FUNC3(struct inpcb *inp, int line)
{
	struct tcp_hpts_entry *hpts;
	int32_t ret;

	hpts = FUNC2(inp);
	ret = FUNC0(inp, hpts, line);
	FUNC1(&hpts->p_mtx);
	return (ret);
}