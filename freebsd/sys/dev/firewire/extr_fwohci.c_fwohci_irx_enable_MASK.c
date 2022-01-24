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
struct fwohcidb_tr {int dbcnt; int bus_addr; struct fwohcidb* db; int /*<<< orphan*/  dma_map; } ;
struct TYPE_4__ {int /*<<< orphan*/  depend; int /*<<< orphan*/  res; int /*<<< orphan*/  cmd; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;
struct fwohcidb {TYPE_2__ db; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct fwohci_softc {TYPE_3__ fc; struct fwohci_dbch* ir; } ;
struct fw_xferq {int flag; int bnpacket; int bnchunk; int /*<<< orphan*/  stdma; int /*<<< orphan*/  stfree; scalar_t__ queued; } ;
struct fwohci_dbch {int ndb; int ndesc; int flags; int /*<<< orphan*/  am; int /*<<< orphan*/  dmat; struct fw_xferq xferq; } ;
struct fw_bulkxfer {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/ * mbuf; } ;
struct firewire_comm {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int ENOMEM ; 
 int FWOHCI_DBCH_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FWOHCI_INTMASK ; 
 int FWXFERQ_HANDLER ; 
 int FWXFERQ_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC4 (struct firewire_comm*) ; 
 scalar_t__ IRX_CH ; 
 int OHCI_BRANCH_ALWAYS ; 
 int OHCI_CNTL_DMA_ACTIVE ; 
 int OHCI_CNTL_DMA_RUN ; 
 int OHCI_CNTL_ISOHDR ; 
 int OHCI_INPUT_LAST ; 
 int OHCI_INTERRUPT_ALWAYS ; 
 int OHCI_INT_DMA_IR ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  OHCI_IR_MASK ; 
 int /*<<< orphan*/  OHCI_IR_MASKCLR ; 
 int /*<<< orphan*/  OHCI_IR_STATCLR ; 
 int OHCI_UPDATE ; 
 int FUNC9 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fwohci_softc*,int /*<<< orphan*/ ,int) ; 
 struct fw_bulkxfer* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct fw_bulkxfer*,int /*<<< orphan*/ ) ; 
 struct fw_bulkxfer* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fwohcidb_tr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct fwohci_softc*,scalar_t__) ; 
 scalar_t__ firewire_debug ; 
 int /*<<< orphan*/  fw_bulkxfer ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct fwohci_softc*,struct fwohci_dbch*) ; 
 int /*<<< orphan*/  fwohci_execute_db2 ; 
 int FUNC20 (struct fwohci_softc*,struct fwohci_dbch*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC21 (char*,int) ; 
 int FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 unsigned short* tagbit ; 

__attribute__((used)) static int
FUNC24(struct firewire_comm *fc, int dmach)
{
	struct fwohci_softc *sc = (struct fwohci_softc *)fc;
	int err = 0, s, ldesc;
	unsigned short tag, ich;
	uint32_t stat;
	struct fwohci_dbch *dbch;
	struct fwohcidb_tr *db_tr;
	struct fw_bulkxfer *first, *prev, *chunk;
	struct fw_xferq *ir;

	dbch = &sc->ir[dmach];
	ir = &dbch->xferq;

	if ((ir->flag & FWXFERQ_RUNNING) == 0) {
		tag = (ir->flag >> 6) & 3;
		ich = ir->flag & 0x3f;
		FUNC10(sc, FUNC8(dmach), tagbit[tag] | ich);

		ir->queued = 0;
		dbch->ndb = ir->bnpacket * ir->bnchunk;
		dbch->ndesc = 2;
		FUNC19(sc, dbch);
		if ((dbch->flags & FWOHCI_DBCH_INIT) == 0)
			return ENOMEM;
		err = FUNC20(sc, dbch);
	}
	if (err)
		return err;

	first = FUNC11(&ir->stfree);
	if (first == NULL) {
		FUNC16(fc->dev, "IR DMA no free chunk\n");
		return 0;
	}

	ldesc = dbch->ndesc - 1;
	s = FUNC22();
	if ((ir->flag & FWXFERQ_HANDLER) == 0)
		FUNC3(fc);
	prev = FUNC13(&ir->stdma, fw_bulkxfer, link);
	while  ((chunk = FUNC11(&ir->stfree)) != NULL) {
		struct fwohcidb *db;

#if 1 /* XXX for if_fwe */
		if (chunk->mbuf != NULL) {
			db_tr = (struct fwohcidb_tr *)(chunk->start);
			db_tr->dbcnt = 1;
			err = FUNC15(dbch->dmat, db_tr->dma_map,
					chunk->mbuf, fwohci_execute_db2, db_tr,
					/* flags */0);
 			FUNC1(db_tr->db[1].db.desc.cmd,
				OHCI_UPDATE | OHCI_INPUT_LAST |
				OHCI_INTERRUPT_ALWAYS | OHCI_BRANCH_ALWAYS);
		}
#endif
		db = ((struct fwohcidb_tr *)(chunk->end))->db;
		FUNC2(db[ldesc].db.desc.res, 0);
		FUNC0(db[ldesc].db.desc.depend, 0xf);
		if (prev != NULL) {
			db = ((struct fwohcidb_tr *)(prev->end))->db;
			FUNC1(db[ldesc].db.desc.depend, dbch->ndesc);
		}
		FUNC14(&ir->stfree, link);
		FUNC12(&ir->stdma, chunk, link);
		prev = chunk;
	}
	if ((ir->flag & FWXFERQ_HANDLER) == 0)
		FUNC4(fc);
	FUNC18(dbch->am, BUS_DMASYNC_PREWRITE);
	FUNC18(dbch->am, BUS_DMASYNC_PREREAD);
	FUNC23(s);
	stat = FUNC9(sc, FUNC6(dmach));
	if (stat & OHCI_CNTL_DMA_ACTIVE)
		return 0;
	if (stat & OHCI_CNTL_DMA_RUN) {
		FUNC10(sc, FUNC7(dmach), OHCI_CNTL_DMA_RUN);
		FUNC16(sc->fc.dev, "IR DMA overrun (0x%08x)\n", stat);
	}

	if (firewire_debug)
		FUNC21("start IR DMA 0x%x\n", stat);
	FUNC10(sc, OHCI_IR_MASKCLR, 1 << dmach);
	FUNC10(sc, OHCI_IR_STATCLR, 1 << dmach);
	FUNC10(sc, OHCI_IR_MASK, 1 << dmach);
	FUNC10(sc, FUNC7(dmach), 0xf0000000);
	FUNC10(sc, FUNC6(dmach), OHCI_CNTL_ISOHDR);
	FUNC10(sc, FUNC5(dmach),
		((struct fwohcidb_tr *)(first->start))->bus_addr
							| dbch->ndesc);
	FUNC10(sc, FUNC6(dmach), OHCI_CNTL_DMA_RUN);
	FUNC10(sc, FWOHCI_INTMASK, OHCI_INT_DMA_IR);
#if 0
	dump_db(sc, IRX_CH + dmach);
#endif
	return err;
}