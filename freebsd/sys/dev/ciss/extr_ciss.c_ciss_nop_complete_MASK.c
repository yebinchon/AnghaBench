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
struct ciss_request {struct ciss_softc* cr_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ciss_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_request*) ; 
 scalar_t__ FUNC2 (struct ciss_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ciss_request *cr)
{
    struct ciss_softc		*sc;
    static int			first_time = 1;

    sc = cr->cr_sc;
    if (FUNC2(cr, NULL, NULL) != 0) {
	if (first_time == 1) {
	    first_time = 0;
	    FUNC0(sc, "SENDING NOP MESSAGE FAILED (not logging anymore)\n");
	}
    }

    FUNC1(cr);
}