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
struct ciss_softc {int /*<<< orphan*/  ciss_buffer_dmat; int /*<<< orphan*/  ciss_command_map; int /*<<< orphan*/  ciss_command_dmat; } ;
struct ciss_request {int cr_flags; int /*<<< orphan*/  cr_datamap; int /*<<< orphan*/ * cr_data; struct ciss_softc* cr_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int CISS_REQ_DATAIN ; 
 int CISS_REQ_DATAOUT ; 
 int CISS_REQ_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct ciss_request *cr)
{
    struct ciss_softc	*sc;

    FUNC2(2);

    sc = cr->cr_sc;

    /* check that unmapping is necessary */
    if ((cr->cr_flags & CISS_REQ_MAPPED) == 0)
	return;

    FUNC0(sc->ciss_command_dmat, sc->ciss_command_map,
		    BUS_DMASYNC_POSTWRITE);

    if (cr->cr_data == NULL)
	goto out;

    if (cr->cr_flags & CISS_REQ_DATAIN)
	FUNC0(sc->ciss_buffer_dmat, cr->cr_datamap, BUS_DMASYNC_POSTREAD);
    if (cr->cr_flags & CISS_REQ_DATAOUT)
	FUNC0(sc->ciss_buffer_dmat, cr->cr_datamap, BUS_DMASYNC_POSTWRITE);

    FUNC1(sc->ciss_buffer_dmat, cr->cr_datamap);
out:
    cr->cr_flags &= ~CISS_REQ_MAPPED;
}