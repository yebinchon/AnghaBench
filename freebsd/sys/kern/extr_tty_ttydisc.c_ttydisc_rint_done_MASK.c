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
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  rint_done ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 scalar_t__ FUNC3 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 

void
FUNC5(struct tty *tp)
{

	FUNC0(tp, MA_OWNED);

	if (FUNC3(tp, rint_done))
		FUNC4(tp);

	/* Wake up readers. */
	FUNC1(tp, FREAD);
	/* Wake up driver for echo. */
	FUNC2(tp);
}