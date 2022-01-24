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
struct bio {int dummy; } ;
struct amr_softc {int /*<<< orphan*/  amr_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amr_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct amr_softc *sc, struct bio *bio)
{
    FUNC2(2);

    FUNC3(&sc->amr_list_lock);
    FUNC0(sc, bio);
    FUNC1(sc);
    FUNC4(&sc->amr_list_lock);
    return(0);
}