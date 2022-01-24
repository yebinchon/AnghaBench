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
struct tty {int /*<<< orphan*/  t_flags; int /*<<< orphan*/  t_dcdwait; int /*<<< orphan*/  t_bgwait; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TF_GONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct tty *tp)
{

	FUNC0(!FUNC2(tp));

	/* Simulate carrier removal. */
	FUNC5(tp, 0);

	/* Wake up all blocked threads. */
	FUNC4(tp, FREAD|FWRITE);
	FUNC1(&tp->t_bgwait);
	FUNC1(&tp->t_dcdwait);

	tp->t_flags |= TF_GONE;
	FUNC3(tp);
}