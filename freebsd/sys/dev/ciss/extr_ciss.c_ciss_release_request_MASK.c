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
 int /*<<< orphan*/  FUNC0 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct ciss_request *cr)
{
    struct ciss_softc	*sc;

    FUNC1(2);

    sc = cr->cr_sc;

    /* release the request to the free queue */
    FUNC0(cr);
}