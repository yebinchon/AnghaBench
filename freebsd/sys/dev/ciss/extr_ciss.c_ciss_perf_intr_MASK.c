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
struct ciss_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ciss_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
    struct ciss_softc	*sc = (struct ciss_softc *)arg;

    /* Clear the interrupt and flush the bridges.  Docs say that the flush
     * needs to be done twice, which doesn't seem right.
     */
    FUNC0(sc);
    FUNC1(sc);

    FUNC2(sc);
}