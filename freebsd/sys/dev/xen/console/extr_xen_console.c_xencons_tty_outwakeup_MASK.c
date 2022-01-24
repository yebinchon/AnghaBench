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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct xencons_priv* FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  xencons_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 

__attribute__((used)) static void
FUNC4(struct tty *tp)
{
	struct xencons_priv *cons;

	cons = FUNC2(tp);

	FUNC1(&cons->callout);

	if (!FUNC3(tp))
		FUNC0(&cons->callout, XC_POLLTIME,
		    xencons_timeout, tp);
}