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
struct xencons_priv {int /*<<< orphan*/  altbrk; int /*<<< orphan*/  opened; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 scalar_t__ kdb_active ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 struct xencons_priv* FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int FUNC6 (struct xencons_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct xencons_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct xencons_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct tty *tp;
	struct xencons_priv *cons;
	int ret;

	tp = arg;
	cons = FUNC2(tp);

	/*
	 * The input will be used by the low-level console when KDB is active
	 */
	if (kdb_active)
		return;

	/*
	 * It's not necessary to retrieve input when the tty is not opened
	 */
	if (!cons->opened)
		return;

	FUNC7(cons);

	FUNC1(tp);
	while ((ret = FUNC6(cons)) != -1) {
#ifdef KDB
		kdb_alt_break(ret, &cons->altbrk);
#endif
		FUNC4(tp, ret, 0);
	}
	FUNC5(tp);
	FUNC3(tp);

	/* Try to flush remaining characters if necessary */
	FUNC8(cons, 0);
}