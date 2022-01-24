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
struct tableop_state {void* tc; void* ch; int modified; } ;
struct op_state {int dummy; } ;
typedef  void ip_fw_chain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct tableop_state*) ; 

__attribute__((used)) static void
FUNC2(void *object, struct op_state *_state)
{
	struct ip_fw_chain *ch;
	struct tableop_state *ts;

	ts = (struct tableop_state *)_state;

	if (ts->tc != object && ts->ch != object)
		return;

	ch = ts->ch;

	FUNC0(ch);

	/* Call specifid unlockers */
	FUNC1(ts);

	/* Indicate we've called */
	ts->modified = 1;
}