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
struct amr_softc {int /*<<< orphan*/  amr_buffer_dmat; int /*<<< orphan*/  amr_buffer64_dmat; } ;
struct amr_command {scalar_t__ ac_data; int /*<<< orphan*/  ac_length; int /*<<< orphan*/  ac_datamap; int /*<<< orphan*/  ac_tag; int /*<<< orphan*/  ac_dmamap; int /*<<< orphan*/  ac_dma64map; struct amr_softc* ac_sc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amr_command*) ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int FUNC1 (struct amr_softc*,struct amr_command*) ; 
 int /*<<< orphan*/  amr_setup_polled_dmamap ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct amr_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct amr_command *ac)
{
    struct amr_softc	*sc = ac->ac_sc;
    int			error;

    FUNC3(2);

    error = 0;

    if (FUNC0(ac)) {
	ac->ac_tag = sc->amr_buffer64_dmat;
	ac->ac_datamap = ac->ac_dma64map;
    } else {
	ac->ac_tag = sc->amr_buffer_dmat;
	ac->ac_datamap = ac->ac_dmamap;
    }

    /* now we have a slot, we can map the command (unmapped in amr_complete) */
    if (ac->ac_data != 0) {
	if (FUNC2(ac->ac_tag, ac->ac_datamap, ac->ac_data,
	    ac->ac_length, amr_setup_polled_dmamap, ac, BUS_DMA_NOWAIT) != 0) {
	    error = 1;
	}
    } else {
	error = FUNC1(sc, ac);
    }

    return (error);
}