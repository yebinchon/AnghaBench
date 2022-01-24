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
struct ciss_request {int cr_flags; struct ciss_softc* cr_sc; } ;
typedef  int /*<<< orphan*/  cr_qhead_t ;

/* Variables and functions */
 int CISS_REQ_POLL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ciss_softc*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct ciss_request *cr, int timeout)
{
    cr_qhead_t qh;
    struct ciss_softc *sc;
    int		error;

    FUNC6(2);

    FUNC1(&qh);
    sc = cr->cr_sc;
    cr->cr_flags |= CISS_REQ_POLL;
    if ((error = FUNC5(cr)) != 0)
	return(error);

    do {
	if (sc->ciss_perf)
	    FUNC4(sc, &qh);
	else
	    FUNC3(sc, &qh);
	FUNC2(sc, &qh);
	if (!(cr->cr_flags & CISS_REQ_POLL))
	    return(0);
	FUNC0(1000);
    } while (timeout-- >= 0);
    return(EWOULDBLOCK);
}