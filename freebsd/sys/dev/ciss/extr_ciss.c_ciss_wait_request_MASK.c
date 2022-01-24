#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ciss_request {int cr_flags; TYPE_1__* cr_sc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ciss_mtx; } ;

/* Variables and functions */
 int CISS_REQ_SLEEP ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  PRIBIO ; 
 int SBT_1MS ; 
 int FUNC0 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ciss_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ciss_request *cr, int timeout)
{
    int		error;

    FUNC1(2);

    cr->cr_flags |= CISS_REQ_SLEEP;
    if ((error = FUNC0(cr)) != 0)
	return(error);

    while ((cr->cr_flags & CISS_REQ_SLEEP) && (error != EWOULDBLOCK)) {
	error = FUNC2(cr, &cr->cr_sc->ciss_mtx, PRIBIO, "cissREQ",
	    SBT_1MS * timeout, 0, 0);
    }
    return(error);
}