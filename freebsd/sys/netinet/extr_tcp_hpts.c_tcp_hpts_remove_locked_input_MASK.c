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
struct tcp_hpts_entry {int dummy; } ;
struct inpcb {scalar_t__ inp_in_input; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_hpts_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_hpts_entry*,struct inpcb*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*,struct tcp_hpts_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct tcp_hpts_entry *hpts, struct inpcb *inp, int32_t flags, int32_t line)
{
	FUNC0(hpts);
	if (inp->inp_in_input) {
		FUNC1(hpts, inp, 1);
		FUNC2(inp, hpts, line);
	}
}