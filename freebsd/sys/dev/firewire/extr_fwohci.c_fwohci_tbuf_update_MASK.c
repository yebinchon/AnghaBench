#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct fwohcidb_tr {struct fwohcidb* db; } ;
struct TYPE_5__ {int /*<<< orphan*/  res; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;
struct fwohcidb {TYPE_3__ db; } ;
struct firewire_comm {int /*<<< orphan*/  dev; struct fw_xferq** it; } ;
struct fwohci_softc {TYPE_1__* it; struct firewire_comm fc; } ;
struct fw_xferq {int /*<<< orphan*/  stfree; int /*<<< orphan*/  stdma; } ;
struct fw_bulkxfer {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_4__ {int ndesc; int /*<<< orphan*/  am; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
#define  FWOHCIEV_ACKCOMPL 128 
 int FWOHCIEV_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC2 (struct firewire_comm*) ; 
 scalar_t__ ITX_CH ; 
 int OHCI_COUNT_MASK ; 
 int OHCI_STATUS_SHIFT ; 
 struct fw_bulkxfer* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct fw_bulkxfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct fwohci_softc*,scalar_t__) ; 
 scalar_t__ firewire_debug ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fwohcicode ; 
 int /*<<< orphan*/  link ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct fw_xferq*) ; 

__attribute__((used)) static void
FUNC12(struct fwohci_softc *sc, int dmach)
{
	struct firewire_comm *fc = &sc->fc;
	struct fwohcidb *db;
	struct fw_bulkxfer *chunk;
	struct fw_xferq *it;
	uint32_t stat, count;
	int s, w=0, ldesc;

	it = fc->it[dmach];
	ldesc = sc->it[dmach].ndesc - 1;
	s = FUNC9(); /* unnecessary ? */
	FUNC1(fc);
	FUNC8(sc->it[dmach].am, BUS_DMASYNC_POSTREAD);
	if (firewire_debug)
		FUNC7(sc, ITX_CH + dmach);
	while ((chunk = FUNC3(&it->stdma)) != NULL) {
		db = ((struct fwohcidb_tr *)(chunk->end))->db;
		stat = FUNC0(db[ldesc].db.desc.res)
				>> OHCI_STATUS_SHIFT;
		db = ((struct fwohcidb_tr *)(chunk->start))->db;
		/* timestamp */
		count = FUNC0(db[ldesc].db.desc.res)
				& OHCI_COUNT_MASK;
		if (stat == 0)
			break;
		FUNC5(&it->stdma, link);
		switch (stat & FWOHCIEV_MASK) {
		case FWOHCIEV_ACKCOMPL:
#if 0
			device_printf(fc->dev, "0x%08x\n", count);
#endif
			break;
		default:
			FUNC6(fc->dev,
				"Isochronous transmit err %02x(%s)\n",
					stat, fwohcicode[stat & 0x1f]);
		}
		FUNC4(&it->stfree, chunk, link);
		w++;
	}
	FUNC2(fc);
	FUNC10(s);
	if (w)
		FUNC11(it);
}