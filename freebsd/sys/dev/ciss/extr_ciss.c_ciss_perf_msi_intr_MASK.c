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
struct ciss_softc {int /*<<< orphan*/  ciss_mtx; } ;
typedef  int /*<<< orphan*/  cr_qhead_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
    cr_qhead_t qh;
    struct ciss_softc	*sc = (struct ciss_softc *)arg;

    FUNC0(&qh);
    FUNC2(sc, &qh);
    FUNC3(&sc->ciss_mtx);
    FUNC1(sc, &qh);
    FUNC4(&sc->ciss_mtx);
}