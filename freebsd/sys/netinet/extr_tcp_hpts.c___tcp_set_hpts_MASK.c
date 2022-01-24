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
struct inpcb {scalar_t__ inp_in_hpts; int inp_hpts_cpu_set; int inp_input_cpu_set; scalar_t__ inp_in_input; void* inp_input_cpu; void* inp_hpts_cpu; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 void* FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcp_hpts_entry* FUNC3 (struct inpcb*) ; 
 struct tcp_hpts_entry* FUNC4 (struct inpcb*) ; 

void
FUNC5(struct inpcb *inp, int32_t line)
{
	struct tcp_hpts_entry *hpts;

	FUNC0(inp);
	hpts = FUNC3(inp);
	if ((inp->inp_in_hpts == 0) &&
	    (inp->inp_hpts_cpu_set == 0)) {
		inp->inp_hpts_cpu = FUNC1(inp);
		inp->inp_hpts_cpu_set = 1;
	}
	FUNC2(&hpts->p_mtx);
	hpts = FUNC4(inp);
	if ((inp->inp_input_cpu_set == 0) &&
	    (inp->inp_in_input == 0)) {
		inp->inp_input_cpu = FUNC1(inp);
		inp->inp_input_cpu_set = 1;
	}
	FUNC2(&hpts->p_mtx);
}