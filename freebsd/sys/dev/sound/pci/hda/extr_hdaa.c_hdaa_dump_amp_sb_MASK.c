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
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct sbuf *sb, uint32_t cap, const char *banner)
{
	int offset, size, step;

	offset = FUNC2(cap);
	size = FUNC3(cap);
	step = FUNC1(cap);
	FUNC4(sb, "     %s amp: 0x%08x "
	    "mute=%d step=%d size=%d offset=%d (%+d/%+ddB)\n",
	    banner, cap,
	    FUNC0(cap),
	    step, size, offset,
	    ((0 - offset) * (size + 1)) / 4,
	    ((step - offset) * (size + 1)) / 4);
}