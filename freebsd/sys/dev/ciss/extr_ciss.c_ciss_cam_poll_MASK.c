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
struct ciss_softc {scalar_t__ ciss_perf; } ;
struct cam_sim {int dummy; } ;
typedef  int /*<<< orphan*/  cr_qhead_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ciss_softc* FUNC1 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct cam_sim *sim)
{
    cr_qhead_t qh;
    struct ciss_softc	*sc = FUNC1(sim);

    FUNC5(2);

    FUNC0(&qh);
    if (sc->ciss_perf)
	FUNC4(sc, &qh);
    else
	FUNC3(sc, &qh);
    FUNC2(sc, &qh);
}