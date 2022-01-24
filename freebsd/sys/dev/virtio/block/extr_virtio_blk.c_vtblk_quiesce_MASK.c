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
struct vtblk_softc {int /*<<< orphan*/  vtblk_vq; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  VTBLK_QUIESCE_TIMEOUT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct vtblk_softc *sc)
{
	int error;

	FUNC0(sc);
	error = 0;

	while (!FUNC3(sc->vtblk_vq)) {
		if (FUNC2(&sc->vtblk_vq, FUNC1(sc), PRIBIO, "vtblkq",
		    VTBLK_QUIESCE_TIMEOUT) == EWOULDBLOCK) {
			error = EBUSY;
			break;
		}
	}

	return (error);
}