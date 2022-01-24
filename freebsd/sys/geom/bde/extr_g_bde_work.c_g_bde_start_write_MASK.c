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
struct g_bde_softc {int /*<<< orphan*/  consumer; } ;
struct g_bde_sector {int /*<<< orphan*/  state; int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  offset; int /*<<< orphan*/ * owner; struct g_bde_softc* softc; } ;
struct bio {struct g_bde_softc* bio_caller2; struct g_bde_sector* bio_caller1; int /*<<< orphan*/  bio_done; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_offset; int /*<<< orphan*/  bio_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_WRITE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_bde_write_done ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct g_bde_sector*) ; 

__attribute__((used)) static int
FUNC4(struct g_bde_sector *sp)
{
	struct bio *bp;
	struct g_bde_softc *sc;

	FUNC3(G_T_TOPOLOGY, "g_bde_start_write(%p)", sp);
	sc = sp->softc;
	FUNC0(sc != NULL, ("NULL sc in g_bde_start_write"));
	FUNC0(sp->owner != NULL, ("NULL sp->owner in g_bde_start_write"));
	bp = FUNC2();
	if (bp == NULL)
		return (ENOMEM);
	bp->bio_cmd = BIO_WRITE;
	bp->bio_offset = sp->offset;
	bp->bio_data = sp->data;
	bp->bio_length = sp->size;
	bp->bio_done = g_bde_write_done;
	bp->bio_caller1 = sp;
	bp->bio_caller2 = sc;
	sp->state = IO;
	FUNC1(bp, sc->consumer);
	return(0);
}