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
struct dcons_state {scalar_t__ reset; } ;
struct dcons_port {int /*<<< orphan*/  outfd; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dcons_state*,void*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct dcons_state *dc, struct dcons_port *p)
{
	char buf[PAGE_SIZE];
	if (dc->reset == 0)
		return;

	FUNC2(buf, PAGE_SIZE,
	    "\r\n[dconschat reset target(addr=0x%jx)...]\r\n",
	    (intmax_t)dc->reset);
	FUNC4(p->outfd, buf, FUNC3(buf));
	FUNC0(&buf[0], PAGE_SIZE);
	FUNC1(dc, (void *)buf, PAGE_SIZE, dc->reset);
}