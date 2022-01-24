#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty {int /*<<< orphan*/ * t_lsc; int /*<<< orphan*/  t_outq; } ;
typedef  TYPE_1__* ng_h4_info_p ;
struct TYPE_4__ {int dying; int /*<<< orphan*/  node; int /*<<< orphan*/  timo; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,int) ; 

__attribute__((used)) static int
FUNC7(struct tty *tp, int flag)
{
	ng_h4_info_p	sc = (ng_h4_info_p) tp->t_lsc;

	FUNC6(tp, FREAD | FWRITE);
	FUNC3(&tp->t_outq);

	if (sc != NULL) {
		FUNC0(sc);

		if (FUNC2(&sc->timo))
			FUNC5(&sc->timo, sc->node);

		tp->t_lsc = NULL;
		sc->dying = 1;

		FUNC1(sc);

		FUNC4(sc->node);
	}

	return (0);
}