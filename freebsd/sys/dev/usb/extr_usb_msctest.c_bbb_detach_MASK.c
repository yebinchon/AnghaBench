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
struct bbb_transfer {int /*<<< orphan*/  cv; int /*<<< orphan*/  mtx; int /*<<< orphan*/  xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_USB ; 
 int /*<<< orphan*/  ST_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bbb_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bbb_transfer *sc)
{
	FUNC3(sc->xfer, ST_MAX);
	FUNC2(&sc->mtx);
	FUNC0(&sc->cv);
	FUNC1(sc, M_USB);
}