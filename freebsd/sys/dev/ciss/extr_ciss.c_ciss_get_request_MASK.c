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
struct ciss_request {int /*<<< orphan*/  cr_sg_tag; int /*<<< orphan*/ * cr_private; int /*<<< orphan*/ * cr_complete; scalar_t__ cr_flags; int /*<<< orphan*/ * cr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_SG_MAX ; 
 int ENOMEM ; 
 struct ciss_request* FUNC0 (struct ciss_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct ciss_softc *sc, struct ciss_request **crp)
{
    struct ciss_request *cr;

    FUNC2(2);

    /*
     * Get a request and clean it up.
     */
    if ((cr = FUNC0(sc)) == NULL)
	return(ENOMEM);

    cr->cr_data = NULL;
    cr->cr_flags = 0;
    cr->cr_complete = NULL;
    cr->cr_private = NULL;
    cr->cr_sg_tag = CISS_SG_MAX;	/* Backstop to prevent accidents */

    FUNC1(cr);
    *crp = cr;
    return(0);
}