#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct fwohcidb_tr {int /*<<< orphan*/  dma_map; TYPE_3__* db; } ;
struct firewire_comm {int /*<<< orphan*/  dev; struct fw_xferq** ir; } ;
struct fwohci_softc {TYPE_4__* ir; struct firewire_comm fc; } ;
struct fw_xferq {int flag; int /*<<< orphan*/  (* hand ) (struct fw_xferq*) ;int /*<<< orphan*/  stvalid; int /*<<< orphan*/  stdma; int /*<<< orphan*/  bnpacket; int /*<<< orphan*/ * buf; } ;
struct fw_bulkxfer {int /*<<< orphan*/  resp; int /*<<< orphan*/  poffset; int /*<<< orphan*/ * mbuf; scalar_t__ end; } ;
struct TYPE_8__ {int ndesc; int /*<<< orphan*/  dmat; int /*<<< orphan*/  am; } ;
struct TYPE_5__ {int /*<<< orphan*/  res; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;
struct TYPE_7__ {TYPE_2__ db; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  EINVAL ; 
#define  FWOHCIEV_ACKCOMPL 128 
 int FWOHCIEV_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FWXFERQ_HANDLER ; 
 int /*<<< orphan*/  FUNC1 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC2 (struct firewire_comm*) ; 
 int OHCI_STATUS_SHIFT ; 
 struct fw_bulkxfer* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct fw_bulkxfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fwohci_softc*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fwohcicode ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct fw_xferq*) ; 
 int /*<<< orphan*/  FUNC14 (struct fw_xferq*) ; 

__attribute__((used)) static void
FUNC15(struct fwohci_softc *sc, int dmach)
{
	struct firewire_comm *fc = &sc->fc;
	struct fwohcidb_tr *db_tr;
	struct fw_bulkxfer *chunk;
	struct fw_xferq *ir;
	uint32_t stat;
	int w = 0, ldesc;

	ir = fc->ir[dmach];
	ldesc = sc->ir[dmach].ndesc - 1;

#if 0
	dump_db(sc, dmach);
#endif
	if ((ir->flag & FWXFERQ_HANDLER) == 0)
		FUNC1(fc);
	FUNC11(sc->ir[dmach].am, BUS_DMASYNC_POSTREAD);
	while ((chunk = FUNC3(&ir->stdma)) != NULL) {
		db_tr = (struct fwohcidb_tr *)chunk->end;
		stat = FUNC0(db_tr->db[ldesc].db.desc.res)
				>> OHCI_STATUS_SHIFT;
		if (stat == 0)
			break;

		if (chunk->mbuf != NULL) {
			FUNC6(sc->ir[dmach].dmat, db_tr->dma_map,
						BUS_DMASYNC_POSTREAD);
			FUNC7(sc->ir[dmach].dmat, db_tr->dma_map);
		} else if (ir->buf != NULL) {
			FUNC10(ir->buf, chunk->poffset,
				ir->bnpacket, BUS_DMASYNC_POSTREAD);
		} else {
			/* XXX */
			FUNC12("fwohci_rbuf_update: this shouldn't happened\n");
		}

		FUNC5(&ir->stdma, link);
		FUNC4(&ir->stvalid, chunk, link);
		switch (stat & FWOHCIEV_MASK) {
		case FWOHCIEV_ACKCOMPL:
			chunk->resp = 0;
			break;
		default:
			chunk->resp = EINVAL;
			FUNC8(fc->dev,
				"Isochronous receive err %02x(%s)\n",
					stat, fwohcicode[stat & 0x1f]);
		}
		w++;
	}
	if ((ir->flag & FWXFERQ_HANDLER) == 0)
		FUNC2(fc);
	if (w == 0)
		return;

	if (ir->flag & FWXFERQ_HANDLER)
		ir->hand(ir);
	else
		FUNC14(ir);
}