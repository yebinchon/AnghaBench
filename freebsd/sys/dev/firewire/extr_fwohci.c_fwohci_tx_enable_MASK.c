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
struct TYPE_7__ {int /*<<< orphan*/  depend; int /*<<< orphan*/  cmd; } ;
struct TYPE_8__ {TYPE_3__ desc; } ;
struct fwohcidb {TYPE_4__ db; } ;
struct TYPE_5__ {int nisodma; } ;
struct fwohci_softc {struct fwohci_dbch* it; TYPE_1__ fc; } ;
struct TYPE_6__ {int flag; int bnpacket; } ;
struct fwohci_dbch {int ndesc; int ndb; struct fwohcidb_tr* bottom; TYPE_2__ xferq; struct fwohcidb_tr* top; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FWXFERQ_EXTBUF ; 
 int FWXFERQ_RUNNING ; 
 int /*<<< orphan*/  OHCI_INTERRUPT_ALWAYS ; 
 scalar_t__ FUNC3 (int) ; 
 struct fwohcidb_tr* FUNC4 (struct fwohcidb_tr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fwohci_dbch*,struct fwohcidb_tr*,int) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static int
FUNC6(struct fwohci_softc *sc, struct fwohci_dbch *dbch)
{
	int err = 0;
	int idb, z, i, dmach = 0, ldesc;
	uint32_t off = 0;
	struct fwohcidb_tr *db_tr;
	struct fwohcidb *db;

	if (!(dbch->xferq.flag & FWXFERQ_EXTBUF)) {
		err = EINVAL;
		return err;
	}
	z = dbch->ndesc;
	for (dmach = 0; dmach < sc->fc.nisodma; dmach++) {
		if (&sc->it[dmach] == dbch) {
			off = FUNC3(dmach);
			break;
		}
	}
	if (off == 0) {
		err = EINVAL;
		return err;
	}
	if (dbch->xferq.flag & FWXFERQ_RUNNING)
		return err;
	dbch->xferq.flag |= FWXFERQ_RUNNING;
	for (i = 0, dbch->bottom = dbch->top; i < (dbch->ndb - 1); i++) {
		dbch->bottom = FUNC4(dbch->bottom, link);
	}
	db_tr = dbch->top;
	for (idb = 0; idb < dbch->ndb; idb++) {
		FUNC5(dbch, db_tr, idb);
		if (FUNC4(db_tr, link) == NULL) {
			break;
		}
		db = db_tr->db;
		ldesc = db_tr->dbcnt - 1;
		FUNC2(db[0].db.desc.depend,
				FUNC4(db_tr, link)->bus_addr | z);
		db[ldesc].db.desc.depend = db[0].db.desc.depend;
		if (dbch->xferq.flag & FWXFERQ_EXTBUF) {
			if (((idb + 1) % dbch->xferq.bnpacket) == 0) {
				FUNC1(
					db[ldesc].db.desc.cmd,
					OHCI_INTERRUPT_ALWAYS);
				/* OHCI 1.1 and above */
				FUNC1(
					db[0].db.desc.cmd,
					OHCI_INTERRUPT_ALWAYS);
			}
		}
		db_tr = FUNC4(db_tr, link);
	}
	FUNC0(
		dbch->bottom->db[dbch->bottom->dbcnt - 1].db.desc.depend, 0xf);
	return err;
}