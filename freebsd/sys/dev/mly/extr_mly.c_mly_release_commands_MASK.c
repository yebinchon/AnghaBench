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
struct mly_softc {int /*<<< orphan*/ * mly_packet; int /*<<< orphan*/  mly_packetmap; int /*<<< orphan*/  mly_packet_dmat; int /*<<< orphan*/  mly_buffer_dmat; } ;
struct mly_command {int /*<<< orphan*/  mc_datamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mly_softc*,struct mly_command**) ; 

__attribute__((used)) static void
FUNC4(struct mly_softc *sc)
{
    struct mly_command	*mc;

    /* throw away command buffer DMA maps */
    while (FUNC3(sc, &mc) == 0)
	FUNC0(sc->mly_buffer_dmat, mc->mc_datamap);

    /* release the packet storage */
    if (sc->mly_packet != NULL) {
	FUNC1(sc->mly_packet_dmat, sc->mly_packetmap);
	FUNC2(sc->mly_packet_dmat, sc->mly_packet, sc->mly_packetmap);
	sc->mly_packet = NULL;
    }
}