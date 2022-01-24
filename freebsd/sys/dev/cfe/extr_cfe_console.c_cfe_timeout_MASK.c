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
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct tty*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cfe_timer ; 
 int /*<<< orphan*/  polltime ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 

__attribute__((used)) static void
FUNC5(void *v)
{
	struct	tty *tp;
	int 	c;

	tp = (struct tty *)v;

	FUNC2(tp, MA_OWNED);
	while ((c = FUNC1(NULL)) != -1)
		FUNC3(tp, c, 0);
	FUNC4(tp);

	FUNC0(&cfe_timer, polltime, cfe_timeout, tp);
}