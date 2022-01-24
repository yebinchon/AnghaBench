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
struct xencons_priv {int /*<<< orphan*/  callout; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XC_POLLTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct tty*) ; 
 struct xencons_priv* FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 

__attribute__((used)) static void
FUNC3(void *v)
{
	struct tty *tp;
	struct xencons_priv *cons;

	tp = v;
	cons = FUNC1(tp);

	if (!FUNC2(tp))
		FUNC0(&cons->callout, XC_POLLTIME,
		    xencons_timeout, tp);
}