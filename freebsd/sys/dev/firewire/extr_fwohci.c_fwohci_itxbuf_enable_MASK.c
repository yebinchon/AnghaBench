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
struct fwohcidb_tr {int bus_addr; struct fwohcidb* db; } ;
struct TYPE_4__ {int cmd; int depend; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;
struct fwohcidb {TYPE_2__ db; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct fwohci_softc {TYPE_3__ fc; struct fwohci_dbch* it; } ;
struct fw_xferq {int flag; int bnpacket; int bnchunk; int /*<<< orphan*/  stfree; int /*<<< orphan*/  stdma; int /*<<< orphan*/  stvalid; int /*<<< orphan*/  buf; } ;
struct fwohci_dbch {int flags; int ndb; int ndesc; int /*<<< orphan*/  am; struct fw_xferq xferq; } ;
struct fw_bulkxfer {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  poffset; } ;
struct firewire_comm {int (* cyctimer ) (struct firewire_comm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int ENOMEM ; 
 int FWOHCI_DBCH_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FWOHCI_INTMASK ; 
 int /*<<< orphan*/  FUNC1 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC2 (struct firewire_comm*) ; 
 scalar_t__ ITX_CH ; 
 int OHCI_BRANCH_ALWAYS ; 
 int OHCI_CNTL_CYCMATCH_S ; 
 int OHCI_CNTL_DMA_ACTIVE ; 
 int OHCI_CNTL_DMA_RUN ; 
 int OHCI_CNTL_DMA_WAKE ; 
 int OHCI_INT_DMA_IT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  OHCI_IT_MASK ; 
 int /*<<< orphan*/  OHCI_IT_MASKCLR ; 
 int /*<<< orphan*/  OHCI_IT_STATCLR ; 
 int FUNC6 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fwohci_softc*,int /*<<< orphan*/ ,int) ; 
 struct fw_bulkxfer* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct fw_bulkxfer*,int /*<<< orphan*/ ) ; 
 struct fw_bulkxfer* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct fwohci_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct fwohci_softc*,scalar_t__) ; 
 int firewire_debug ; 
 int /*<<< orphan*/  fw_bulkxfer ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct fwohci_softc*,struct fwohci_dbch*) ; 
 int FUNC18 (struct firewire_comm*,int) ; 
 int FUNC19 (struct fwohci_softc*,struct fwohci_dbch*) ; 
 int /*<<< orphan*/  FUNC20 (struct fwohci_softc*,int,struct fw_bulkxfer*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC21 (char*,int,...) ; 
 int FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int FUNC24 (struct firewire_comm*) ; 

__attribute__((used)) static int
FUNC25(struct firewire_comm *fc, int dmach)
{
	struct fwohci_softc *sc = (struct fwohci_softc *)fc;
	int err = 0;
	unsigned short tag, ich;
	struct fwohci_dbch *dbch;
	int cycle_match, cycle_now, s, ldesc;
	uint32_t stat;
	struct fw_bulkxfer *first, *chunk, *prev;
	struct fw_xferq *it;

	dbch = &sc->it[dmach];
	it = &dbch->xferq;

	tag = (it->flag >> 6) & 3;
	ich = it->flag & 0x3f;
	if ((dbch->flags & FWOHCI_DBCH_INIT) == 0) {
		dbch->ndb = it->bnpacket * it->bnchunk;
		dbch->ndesc = 3;
		FUNC17(sc, dbch);
		if ((dbch->flags & FWOHCI_DBCH_INIT) == 0)
			return ENOMEM;

		err = FUNC19(sc, dbch);
	}
	if (err)
		return err;

	ldesc = dbch->ndesc - 1;
	s = FUNC22();
	FUNC1(fc);
	prev = FUNC10(&it->stdma, fw_bulkxfer, link);
	while  ((chunk = FUNC8(&it->stvalid)) != NULL) {
		struct fwohcidb *db;

		FUNC15(it->buf, chunk->poffset, it->bnpacket,
					BUS_DMASYNC_PREWRITE);
		FUNC20(sc, dmach, chunk);
		if (prev != NULL) {
			db = ((struct fwohcidb_tr *)(prev->end))->db;
#if 0 /* XXX necessary? */
			FWOHCI_DMA_SET(db[ldesc].db.desc.cmd,
						OHCI_BRANCH_ALWAYS);
#endif
#if 0 /* if bulkxfer->npacket changes */
			db[ldesc].db.desc.depend = db[0].db.desc.depend =
				((struct fwohcidb_tr *)
				(chunk->start))->bus_addr | dbch->ndesc;
#else
			FUNC0(db[0].db.desc.depend, dbch->ndesc);
			FUNC0(db[ldesc].db.desc.depend, dbch->ndesc);
#endif
		}
		FUNC11(&it->stvalid, link);
		FUNC9(&it->stdma, chunk, link);
		prev = chunk;
	}
	FUNC2(fc);
	FUNC16(dbch->am, BUS_DMASYNC_PREWRITE);
	FUNC16(dbch->am, BUS_DMASYNC_PREREAD);
	FUNC23(s);
	stat = FUNC6(sc, FUNC4(dmach));
	if (firewire_debug && (stat & OHCI_CNTL_CYCMATCH_S))
		FUNC21("stat 0x%x\n", stat);

	if (stat & (OHCI_CNTL_DMA_ACTIVE | OHCI_CNTL_CYCMATCH_S))
		return 0;

#if 0
	OWRITE(sc, OHCI_ITCTLCLR(dmach), OHCI_CNTL_DMA_RUN);
#endif
	FUNC7(sc, OHCI_IT_MASKCLR, 1 << dmach);
	FUNC7(sc, OHCI_IT_STATCLR, 1 << dmach);
	FUNC7(sc, OHCI_IT_MASK, 1 << dmach);
	FUNC7(sc, FWOHCI_INTMASK, OHCI_INT_DMA_IT);

	first = FUNC8(&it->stdma);
	FUNC7(sc, FUNC3(dmach),
		((struct fwohcidb_tr *)(first->start))->bus_addr | dbch->ndesc);
	if (firewire_debug > 1) {
		FUNC21("fwohci_itxbuf_enable: kick 0x%08x\n", stat);
#if 1
		FUNC14(sc, ITX_CH + dmach);
#endif
	}
	if ((stat & OHCI_CNTL_DMA_RUN) == 0) {
#if 1
		/* Don't start until all chunks are buffered */
		if (FUNC8(&it->stfree) != NULL)
			goto out;
#endif
#if 1
		/* Clear cycle match counter bits */
		FUNC7(sc, FUNC5(dmach), 0xffff0000);

		/* 2bit second + 13bit cycle */
		cycle_now = (fc->cyctimer(fc) >> 12) & 0x7fff;
		cycle_match = FUNC18(fc, cycle_now);

		FUNC7(sc, FUNC4(dmach),
				OHCI_CNTL_CYCMATCH_S | (cycle_match << 16)
				| OHCI_CNTL_DMA_RUN);
#else
		OWRITE(sc, OHCI_ITCTL(dmach), OHCI_CNTL_DMA_RUN);
#endif
		if (firewire_debug > 1) {
			FUNC21("cycle_match: 0x%04x->0x%04x\n",
						cycle_now, cycle_match);
			FUNC14(sc, ITX_CH + dmach);
			FUNC13(sc, ITX_CH + dmach);
		}
	} else if ((stat & OHCI_CNTL_CYCMATCH_S) == 0) {
		FUNC12(sc->fc.dev,
			"IT DMA underrun (0x%08x)\n", stat);
		FUNC7(sc, FUNC4(dmach), OHCI_CNTL_DMA_WAKE);
	}
out:
	return err;
}