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
struct twe_softc {int /*<<< orphan*/  twe_buffer_dmat; int /*<<< orphan*/  twe_immediate_map; int /*<<< orphan*/  twe_immediate_dmat; int /*<<< orphan*/  twe_cmdmap; int /*<<< orphan*/  twe_cmd_dmat; } ;
struct twe_request {int tr_flags; int /*<<< orphan*/ * tr_realdata; int /*<<< orphan*/ * tr_data; int /*<<< orphan*/  tr_dmamap; int /*<<< orphan*/  tr_length; struct twe_softc* tr_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int TWE_CMD_ALIGNBUF ; 
 int TWE_CMD_DATAIN ; 
 int TWE_CMD_DATAOUT ; 
 int TWE_CMD_IMMEDIATE ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_MALLOC_CLASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  dumping ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(struct twe_request *tr)
{
    struct twe_softc	*sc = tr->tr_sc;

    FUNC4(4);

    if (!dumping)
	FUNC0(sc);
    FUNC2(sc->twe_cmd_dmat, sc->twe_cmdmap, BUS_DMASYNC_POSTWRITE);

    /*
     * If the command involved data, unmap that too.
     */
    if (tr->tr_data != NULL) {
	if (tr->tr_flags & TWE_CMD_DATAIN) {
	    if (tr->tr_flags & TWE_CMD_IMMEDIATE) {
		FUNC2(sc->twe_immediate_dmat, sc->twe_immediate_map,
				BUS_DMASYNC_POSTREAD);
	    } else {
		FUNC2(sc->twe_buffer_dmat, tr->tr_dmamap,
				BUS_DMASYNC_POSTREAD);
	    }

	    /* if we're using an alignment buffer, and we're reading data, copy the real data in */
	    if (tr->tr_flags & TWE_CMD_ALIGNBUF)
		FUNC1(tr->tr_data, tr->tr_realdata, tr->tr_length);
	}
	if (tr->tr_flags & TWE_CMD_DATAOUT) {
	    if (tr->tr_flags & TWE_CMD_IMMEDIATE) {
		FUNC2(sc->twe_immediate_dmat, sc->twe_immediate_map,
				BUS_DMASYNC_POSTWRITE);
	    } else {
		FUNC2(sc->twe_buffer_dmat, tr->tr_dmamap,
				BUS_DMASYNC_POSTWRITE);
	    }
	}

	if (tr->tr_flags & TWE_CMD_IMMEDIATE) {
	    FUNC3(sc->twe_immediate_dmat, sc->twe_immediate_map);
	} else {
	    FUNC3(sc->twe_buffer_dmat, tr->tr_dmamap); 
	}
    }

    /* free alignment buffer if it was used */
    if (tr->tr_flags & TWE_CMD_ALIGNBUF) {
	FUNC5(tr->tr_data, TWE_MALLOC_CLASS);
	tr->tr_data = tr->tr_realdata;		/* restore 'real' data pointer */
    }
}