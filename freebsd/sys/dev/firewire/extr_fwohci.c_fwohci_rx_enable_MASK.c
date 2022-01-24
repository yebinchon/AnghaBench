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
typedef  scalar_t__ uint32_t ;
struct fwohcidb_tr {int dbcnt; int bus_addr; struct fwohcidb* db; } ;
struct TYPE_6__ {int /*<<< orphan*/  depend; int /*<<< orphan*/  cmd; } ;
struct TYPE_7__ {TYPE_2__ desc; } ;
struct fwohcidb {TYPE_3__ db; } ;
struct TYPE_5__ {int nisodma; } ;
struct TYPE_8__ {int flag; int bnpacket; } ;
struct fwohci_dbch {int ndesc; int ndb; struct fwohcidb_tr* top; TYPE_4__ xferq; int /*<<< orphan*/  am; scalar_t__ buf_offset; struct fwohcidb_tr* bottom; int /*<<< orphan*/  db_trq; } ;
struct fwohci_softc {int /*<<< orphan*/  dummy_dma; struct fwohci_dbch* ir; TYPE_1__ fc; struct fwohci_dbch arrs; struct fwohci_dbch arrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FWXFERQ_EXTBUF ; 
 int FWXFERQ_RUNNING ; 
 int FWXFERQ_STREAM ; 
 scalar_t__ OHCI_ARQOFF ; 
 scalar_t__ OHCI_ARSOFF ; 
 int OHCI_CNTL_DMA_RUN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  OHCI_INTERRUPT_ALWAYS ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct fwohci_softc*,int /*<<< orphan*/ ,int) ; 
 struct fwohcidb_tr* FUNC7 (int /*<<< orphan*/ *) ; 
 struct fwohcidb_tr* FUNC8 (struct fwohcidb_tr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fwohci_dbch*,struct fwohcidb_tr*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static int
FUNC11(struct fwohci_softc *sc, struct fwohci_dbch *dbch)
{
	int err = 0;
	int idb, z, i, dmach = 0, ldesc;
	uint32_t off = 0;
	struct fwohcidb_tr *db_tr;
	struct fwohcidb *db;

	z = dbch->ndesc;
	if (&sc->arrq == dbch) {
		off = OHCI_ARQOFF;
	} else if (&sc->arrs == dbch) {
		off = OHCI_ARSOFF;
	} else {
		for (dmach = 0; dmach < sc->fc.nisodma; dmach++) {
			if (&sc->ir[dmach] == dbch) {
				off = FUNC5(dmach);
				break;
			}
		}
	}
	if (off == 0) {
		err = EINVAL;
		return err;
	}
	if (dbch->xferq.flag & FWXFERQ_STREAM) {
		if (dbch->xferq.flag & FWXFERQ_RUNNING)
			return err;
	} else {
		if (dbch->xferq.flag & FWXFERQ_RUNNING) {
			err = EBUSY;
			return err;
		}
	}
	dbch->xferq.flag |= FWXFERQ_RUNNING;
	dbch->top = FUNC7(&dbch->db_trq);
	for (i = 0, dbch->bottom = dbch->top; i < (dbch->ndb - 1); i++) {
		dbch->bottom = FUNC8(dbch->bottom, link);
	}
	db_tr = dbch->top;
	for (idb = 0; idb < dbch->ndb; idb++) {
		FUNC10(dbch, db_tr, idb, &sc->dummy_dma);
		if (FUNC8(db_tr, link) == NULL)
			break;
		db = db_tr->db;
		ldesc = db_tr->dbcnt - 1;
		FUNC2(db[ldesc].db.desc.depend,
			FUNC8(db_tr, link)->bus_addr | z);
		if (dbch->xferq.flag & FWXFERQ_EXTBUF) {
			if (((idb + 1) % dbch->xferq.bnpacket) == 0) {
				FUNC1(
					db[ldesc].db.desc.cmd,
					OHCI_INTERRUPT_ALWAYS);
				FUNC0(
					db[ldesc].db.desc.depend,
					0xf);
			}
		}
		db_tr = FUNC8(db_tr, link);
	}
	FUNC0(
		dbch->bottom->db[db_tr->dbcnt - 1].db.desc.depend, 0xf);
	dbch->buf_offset = 0;
	FUNC9(dbch->am, BUS_DMASYNC_PREREAD);
	FUNC9(dbch->am, BUS_DMASYNC_PREWRITE);
	if (dbch->xferq.flag & FWXFERQ_STREAM) {
		return err;
	} else {
		FUNC6(sc, FUNC3(off), dbch->top->bus_addr | z);
	}
	FUNC6(sc, FUNC4(off), OHCI_CNTL_DMA_RUN);
	return err;
}