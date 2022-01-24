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
typedef  union mly_command_packet {int dummy; } mly_command_packet ;
struct mly_softc {int /*<<< orphan*/  mly_buffer_dmat; scalar_t__ mly_packetphys; scalar_t__ mly_packet; struct mly_command* mly_command; int /*<<< orphan*/  mly_packetmap; int /*<<< orphan*/  mly_packet_dmat; TYPE_1__* mly_controllerinfo; } ;
struct mly_command {int /*<<< orphan*/  mc_datamap; scalar_t__ mc_packetphys; scalar_t__ mc_packet; scalar_t__ mc_slot; struct mly_softc* mc_sc; } ;
struct TYPE_2__ {int /*<<< orphan*/  maximum_parallel_commands; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MLY_MAX_COMMANDS ; 
 scalar_t__ MLY_SLOT_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct mly_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mly_command*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mly_alloc_commands_map ; 
 int /*<<< orphan*/  FUNC5 (struct mly_command*) ; 

__attribute__((used)) static int
FUNC6(struct mly_softc *sc)
{
    struct mly_command		*mc;
    int				i, ncmd;
 
    if (sc->mly_controllerinfo == NULL) {
	ncmd = 4;
    } else {
	ncmd = FUNC4(MLY_MAX_COMMANDS, sc->mly_controllerinfo->maximum_parallel_commands);
    }

    /*
     * Allocate enough space for all the command packets in one chunk and
     * map them permanently into controller-visible space.
     */
    if (FUNC2(sc->mly_packet_dmat, (void **)&sc->mly_packet, 
			 BUS_DMA_NOWAIT, &sc->mly_packetmap)) {
	return(ENOMEM);
    }
    if (FUNC1(sc->mly_packet_dmat, sc->mly_packetmap, sc->mly_packet, 
			ncmd * sizeof(union mly_command_packet), 
			mly_alloc_commands_map, sc, BUS_DMA_NOWAIT) != 0)
	return (ENOMEM);

    for (i = 0; i < ncmd; i++) {
	mc = &sc->mly_command[i];
	FUNC3(mc, sizeof(*mc));
	mc->mc_sc = sc;
	mc->mc_slot = MLY_SLOT_START + i;
	mc->mc_packet = sc->mly_packet + i;
	mc->mc_packetphys = sc->mly_packetphys + (i * sizeof(union mly_command_packet));
	if (!FUNC0(sc->mly_buffer_dmat, 0, &mc->mc_datamap))
	    FUNC5(mc);
    }
    return(0);
}