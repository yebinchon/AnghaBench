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
typedef  int /*<<< orphan*/  uint32_t ;
struct fwohcidb_tr {struct fwohcidb* db; } ;
struct TYPE_5__ {int /*<<< orphan*/  depend; int /*<<< orphan*/  res; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;
struct fwohcidb {TYPE_3__ db; } ;
struct fwohci_softc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  psize; } ;
struct fwohci_dbch {struct fwohcidb_tr* bottom; int /*<<< orphan*/  am; TYPE_1__ xferq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OHCI_CNTL_DMA_WAKE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fwohci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct fwohci_softc *sc, struct fwohci_dbch *dbch,
    struct fwohcidb_tr *db_tr, uint32_t off, int wake)
{
	struct fwohcidb *db = &db_tr->db[0];

	FUNC0(db->db.desc.depend, 0xf);
	FUNC2(db->db.desc.res, dbch->xferq.psize);
	FUNC1(dbch->bottom->db[0].db.desc.depend, 1);
	FUNC5(dbch->am, BUS_DMASYNC_PREWRITE);
	dbch->bottom = db_tr;

	if (wake)
		FUNC4(sc, FUNC3(off), OHCI_CNTL_DMA_WAKE);
}