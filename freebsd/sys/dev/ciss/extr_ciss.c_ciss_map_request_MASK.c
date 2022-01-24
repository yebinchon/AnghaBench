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
struct ciss_softc {scalar_t__ ciss_perf; int /*<<< orphan*/  ciss_buffer_dmat; int /*<<< orphan*/  ciss_command_map; int /*<<< orphan*/  ciss_command_dmat; } ;
struct ciss_request {int cr_flags; int /*<<< orphan*/  cr_ccphys; int /*<<< orphan*/  cr_sg_tag; int /*<<< orphan*/  cr_length; int /*<<< orphan*/ * cr_data; int /*<<< orphan*/  cr_datamap; struct ciss_softc* cr_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int CISS_REQ_BUSY ; 
 int CISS_REQ_CCB ; 
 int CISS_REQ_MAPPED ; 
 int /*<<< orphan*/  CISS_SG_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ciss_softc*,struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ciss_request*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ciss_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ciss_request_map_helper ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct ciss_request *cr)
{
    struct ciss_softc	*sc;
    int			error = 0;

    FUNC5(2);

    sc = cr->cr_sc;

    /* check that mapping is necessary */
    if (cr->cr_flags & CISS_REQ_MAPPED)
	return(0);

    cr->cr_flags |= CISS_REQ_MAPPED;

    FUNC4(sc->ciss_command_dmat, sc->ciss_command_map,
		    BUS_DMASYNC_PREWRITE);

    if (cr->cr_data != NULL) {
	if (cr->cr_flags & CISS_REQ_CCB)
		error = FUNC3(sc->ciss_buffer_dmat,
					cr->cr_datamap, cr->cr_data,
					ciss_request_map_helper, cr, 0);
	else
		error = FUNC2(sc->ciss_buffer_dmat, cr->cr_datamap,
					cr->cr_data, cr->cr_length,
					ciss_request_map_helper, cr, 0);
	if (error != 0)
	    return (error);
    } else {
	/*
	 * Post the command to the adapter.
	 */
	cr->cr_sg_tag = CISS_SG_NONE;
	cr->cr_flags |= CISS_REQ_BUSY;
	if (sc->ciss_perf)
	    FUNC0(sc, cr);
	else
	    FUNC1(sc, cr->cr_ccphys);
    }

    return(0);
}