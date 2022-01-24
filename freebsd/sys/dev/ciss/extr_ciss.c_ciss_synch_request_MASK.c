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
struct ciss_request {TYPE_1__* cr_sc; } ;
struct TYPE_2__ {int ciss_flags; } ;

/* Variables and functions */
 int CISS_FLAG_RUNNING ; 
 int FUNC0 (struct ciss_request*,int) ; 
 int FUNC1 (struct ciss_request*,int) ; 

__attribute__((used)) static int
FUNC2(struct ciss_request *cr, int timeout)
{
    if (cr->cr_sc->ciss_flags & CISS_FLAG_RUNNING) {
	return(FUNC1(cr, timeout));
    } else {
	return(FUNC0(cr, timeout));
    }
}