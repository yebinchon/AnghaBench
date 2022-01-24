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
struct ciss_softc {int dummy; } ;
struct ciss_ldrive {TYPE_1__* cl_lstatus; } ;
struct TYPE_2__ {int status; int blocks_to_recover; int /*<<< orphan*/ * drive_failure_map; int /*<<< orphan*/  drive_rebuilding; } ;

/* Variables and functions */
 int FUNC0 (struct ciss_softc*,int /*<<< orphan*/ ) ; 
 int CISS_BIG_MAP_ENTRIES ; 
 int FUNC1 (struct ciss_softc*,int /*<<< orphan*/ ) ; 
#define  CISS_LSTATUS_BECOMING_READY 137 
#define  CISS_LSTATUS_EXPANDING 136 
#define  CISS_LSTATUS_FAILED 135 
#define  CISS_LSTATUS_INTERIM_RECOVERY 134 
#define  CISS_LSTATUS_MISSING_PDRIVE 133 
#define  CISS_LSTATUS_OK 132 
#define  CISS_LSTATUS_QUEUED_FOR_EXPANSION 131 
#define  CISS_LSTATUS_READY_RECOVERY 130 
#define  CISS_LSTATUS_RECOVERING 129 
#define  CISS_LSTATUS_WRONG_PDRIVE 128 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(struct ciss_softc *sc, struct ciss_ldrive *ld)
{
    int		bus, target, i;

    if (ld->cl_lstatus == NULL) {
	FUNC3("does not exist\n");
	return;
    }

    /* print drive status */
    switch(ld->cl_lstatus->status) {
    case CISS_LSTATUS_OK:
	FUNC3("online\n");
	break;
    case CISS_LSTATUS_INTERIM_RECOVERY:
	FUNC3("in interim recovery mode\n");
	break;
    case CISS_LSTATUS_READY_RECOVERY:
	FUNC3("ready to begin recovery\n");
	break;
    case CISS_LSTATUS_RECOVERING:
	bus = FUNC0(sc, ld->cl_lstatus->drive_rebuilding);
	target = FUNC0(sc, ld->cl_lstatus->drive_rebuilding);
	FUNC3("being recovered, working on physical drive %d.%d, %u blocks remaining\n",
	       bus, target, ld->cl_lstatus->blocks_to_recover);
	break;
    case CISS_LSTATUS_EXPANDING:
	FUNC3("being expanded, %u blocks remaining\n",
	       ld->cl_lstatus->blocks_to_recover);
	break;
    case CISS_LSTATUS_QUEUED_FOR_EXPANSION:
	FUNC3("queued for expansion\n");
	break;
    case CISS_LSTATUS_FAILED:
	FUNC3("queued for expansion\n");
	break;
    case CISS_LSTATUS_WRONG_PDRIVE:
	FUNC3("wrong physical drive inserted\n");
	break;
    case CISS_LSTATUS_MISSING_PDRIVE:
	FUNC3("missing a needed physical drive\n");
	break;
    case CISS_LSTATUS_BECOMING_READY:
	FUNC3("becoming ready\n");
	break;
    }

    /* print failed physical drives */
    for (i = 0; i < CISS_BIG_MAP_ENTRIES / 8; i++) {
	bus = FUNC0(sc, ld->cl_lstatus->drive_failure_map[i]);
	target = FUNC1(sc, ld->cl_lstatus->drive_failure_map[i]);
	if (bus == -1)
	    continue;
	FUNC2(sc, "physical drive %d:%d (%x) failed\n", bus, target,
		    ld->cl_lstatus->drive_failure_map[i]);
    }
}