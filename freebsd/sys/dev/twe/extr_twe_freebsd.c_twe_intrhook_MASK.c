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
struct twe_softc {int /*<<< orphan*/  twe_ich; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
    struct twe_softc		*sc = (struct twe_softc *)arg;

    /* pull ourselves off the intrhook chain */
    FUNC0(&sc->twe_ich);

    /* call core startup routine */
    FUNC1(sc);
}