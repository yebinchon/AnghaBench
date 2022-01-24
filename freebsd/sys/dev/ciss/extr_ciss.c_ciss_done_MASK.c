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
typedef  int u_int32_t ;
struct ciss_softc {int ciss_max_requests; struct ciss_request* ciss_request; } ;
struct ciss_request {struct ciss_command* cr_cc; } ;
struct TYPE_2__ {int host_tag; } ;
struct ciss_command {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  cr_qhead_t ;

/* Variables and functions */
 int CISS_HDR_HOST_TAG_ERROR ; 
 int FUNC0 (struct ciss_softc*) ; 
 int CISS_TL_SIMPLE_OPQ_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct ciss_softc *sc, cr_qhead_t *qh)
{
    struct ciss_request	*cr;
    struct ciss_command	*cc;
    u_int32_t		tag, index;

    FUNC4(3);

    /*
     * Loop quickly taking requests from the adapter and moving them
     * to the completed queue.
     */
    for (;;) {

	tag = FUNC0(sc);
	if (tag == CISS_TL_SIMPLE_OPQ_EMPTY)
	    break;
	index = tag >> 2;
	FUNC3(2, "completed command %d%s", index,
	      (tag & CISS_HDR_HOST_TAG_ERROR) ? " with error" : "");
	if (index >= sc->ciss_max_requests) {
	    FUNC2(sc, "completed invalid request %d (0x%x)\n", index, tag);
	    continue;
	}
	cr = &(sc->ciss_request[index]);
	cc = cr->cr_cc;
	cc->header.host_tag = tag;	/* not updated by adapter */
	FUNC1(cr, qh);
    }

}