#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fwohcidb_tr {int /*<<< orphan*/ * dma_map; int /*<<< orphan*/ * buf; } ;
struct TYPE_2__ {int flag; int /*<<< orphan*/  psize; } ;
struct fwohci_dbch {int flags; int ndb; int /*<<< orphan*/  db_trq; int /*<<< orphan*/  am; int /*<<< orphan*/  dmat; TYPE_1__ xferq; } ;

/* Variables and functions */
 int FWOHCI_DBCH_INIT ; 
 int FWXFERQ_EXTBUF ; 
 int /*<<< orphan*/  M_FW ; 
 struct fwohcidb_tr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fwohcidb_tr* FUNC2 (struct fwohcidb_tr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fwohcidb_tr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC7(struct fwohci_dbch *dbch)
{
	struct fwohcidb_tr *db_tr;
	int idb;

	if ((dbch->flags & FWOHCI_DBCH_INIT) == 0)
		return;

	for (db_tr = FUNC0(&dbch->db_trq), idb = 0; idb < dbch->ndb;
	    db_tr = FUNC2(db_tr, link), idb++) {
		if ((dbch->xferq.flag & FWXFERQ_EXTBUF) == 0 &&
		    db_tr->buf != NULL) {
			FUNC6(dbch->dmat, db_tr->dma_map,
					db_tr->buf, dbch->xferq.psize);
			db_tr->buf = NULL;
		} else if (db_tr->dma_map != NULL)
			FUNC3(dbch->dmat, db_tr->dma_map);
	}
	dbch->ndb = 0;
	db_tr = FUNC0(&dbch->db_trq);
	FUNC5(dbch->am);
	FUNC4(db_tr, M_FW);
	FUNC1(&dbch->db_trq);
	dbch->flags &= ~FWOHCI_DBCH_INIT;
}