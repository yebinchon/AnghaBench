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
struct terminal {struct tty* tm_tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 

void
FUNC4(struct terminal *tm, char c)
{
	struct tty *tp;

	tp = tm->tm_tty;
	if (tp == NULL)
		return;

	FUNC0(tp);
	FUNC2(tp, c, 0);
	FUNC3(tp);
	FUNC1(tp);
}