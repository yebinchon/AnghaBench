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
struct mly_softc {int /*<<< orphan*/  mly_buffer_dmat; } ;
struct mly_command {int mc_flags; int /*<<< orphan*/  mc_datamap; int /*<<< orphan*/ * mc_data; struct mly_softc* mc_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int MLY_CMD_DATAIN ; 
 int MLY_CMD_DATAOUT ; 
 int MLY_CMD_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct mly_command *mc)
{
    struct mly_softc	*sc = mc->mc_sc;

    FUNC2(2);

    if (!(mc->mc_flags & MLY_CMD_MAPPED))
	return;

    /* does the command have a data buffer? */
    if (mc->mc_data != NULL) {
	if (mc->mc_flags & MLY_CMD_DATAIN)
	    FUNC0(sc->mly_buffer_dmat, mc->mc_datamap, BUS_DMASYNC_POSTREAD);
	if (mc->mc_flags & MLY_CMD_DATAOUT)
	    FUNC0(sc->mly_buffer_dmat, mc->mc_datamap, BUS_DMASYNC_POSTWRITE);

	FUNC1(sc->mly_buffer_dmat, mc->mc_datamap);
    }
    mc->mc_flags &= ~MLY_CMD_MAPPED;
}