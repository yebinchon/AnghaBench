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
struct xencons_priv {int dummy; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ) ; 
 struct xencons_priv* FUNC1 (struct tty*) ; 
 int FUNC2 (struct tty*,char*,int) ; 
 int FUNC3 (struct xencons_priv*,char,int) ; 
 scalar_t__ FUNC4 (struct xencons_priv*) ; 

__attribute__((used)) static bool
FUNC5(struct tty *tp)
{
	bool cons_full;
	char c;
	struct xencons_priv *cons;

	cons = FUNC1(tp);

	FUNC0(tp, MA_OWNED);

	/*
	 * Don't transmit any character if the buffer is full. Otherwise,
	 * characters may be lost
	 */
	if (FUNC4(cons))
		return (false);

	cons_full = false;
	while (!cons_full && FUNC2(tp, &c, 1) == 1)
		cons_full = FUNC3(cons, c, false);

	return (!cons_full);
}