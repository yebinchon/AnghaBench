#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct sysctl_oid {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  always_on; int /*<<< orphan*/  boot_on; int /*<<< orphan*/  enable_delay; int /*<<< orphan*/  ramp_delay; int /*<<< orphan*/  max_uamp; int /*<<< orphan*/  min_uamp; int /*<<< orphan*/  max_uvolt; int /*<<< orphan*/  min_uvolt; } ;
struct regnode_init_def {char* name; int flags; char* parent_name; int /*<<< orphan*/  ofw_node; TYPE_1__ std_param; int /*<<< orphan*/  id; } ;
struct regnode {char* name; char* parent_name; int flags; int /*<<< orphan*/  sysctl_ctx; TYPE_1__ std_param; int /*<<< orphan*/  enable_cnt; int /*<<< orphan*/  ofw_node; int /*<<< orphan*/ * parent; int /*<<< orphan*/  pdev; int /*<<< orphan*/  id; int /*<<< orphan*/  consumers_list; void* softc; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__* regnode_class_t ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int /*<<< orphan*/  kobj_class_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int size; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_REGULATOR ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int REGULATOR_FLAGS_STATIC ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct regnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _hw_regulator ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int /*<<< orphan*/  regnode_uvolt_sysctl ; 
 void* FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

struct regnode *
FUNC17(device_t pdev, regnode_class_t regnode_class,
    struct regnode_init_def *def)
{
	struct regnode *regnode;
	struct sysctl_oid *regnode_oid;

	FUNC0(def->name != NULL, ("regulator name is NULL"));
	FUNC0(def->name[0] != '\0', ("regulator name is empty"));

	FUNC1();
	if (FUNC13(def->name) != NULL)
		FUNC12("Duplicated regulator registration: %s\n", def->name);
	FUNC2();

	/* Create object and initialize it. */
	regnode = FUNC11(sizeof(struct regnode), M_REGULATOR,
	    M_WAITOK | M_ZERO);
	FUNC10((kobj_t)regnode, (kobj_class_t)regnode_class);
	FUNC15(&regnode->lock, "Regulator node lock");

	/* Allocate softc if required. */
	if (regnode_class->size > 0) {
		regnode->softc = FUNC11(regnode_class->size, M_REGULATOR,
		    M_WAITOK | M_ZERO);
	}


	/* Copy all strings unless they're flagged as static. */
	if (def->flags & REGULATOR_FLAGS_STATIC) {
		regnode->name = def->name;
		regnode->parent_name = def->parent_name;
	} else {
		regnode->name = FUNC14(def->name, M_REGULATOR);
		if (def->parent_name != NULL)
			regnode->parent_name = FUNC14(def->parent_name,
			    M_REGULATOR);
	}

	/* Rest of init. */
	FUNC9(&regnode->consumers_list);
	regnode->id = def->id;
	regnode->pdev = pdev;
	regnode->flags = def->flags;
	regnode->parent = NULL;
	regnode->std_param = def->std_param;
#ifdef FDT
	regnode->ofw_node = def->ofw_node;
#endif

	FUNC16(&regnode->sysctl_ctx);
	regnode_oid = FUNC4(&regnode->sysctl_ctx,
	    FUNC8(_hw_regulator),
	    OID_AUTO, regnode->name,
	    CTLFLAG_RD, 0, "A regulator node");

	FUNC3(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "min_uvolt",
	    CTLFLAG_RD, &regnode->std_param.min_uvolt, 0,
	    "Minimal voltage (in uV)");
	FUNC3(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "max_uvolt",
	    CTLFLAG_RD, &regnode->std_param.max_uvolt, 0,
	    "Maximal voltage (in uV)");
	FUNC3(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "min_uamp",
	    CTLFLAG_RD, &regnode->std_param.min_uamp, 0,
	    "Minimal amperage (in uA)");
	FUNC3(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "max_uamp",
	    CTLFLAG_RD, &regnode->std_param.max_uamp, 0,
	    "Maximal amperage (in uA)");
	FUNC3(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "ramp_delay",
	    CTLFLAG_RD, &regnode->std_param.ramp_delay, 0,
	    "Ramp delay (in uV/us)");
	FUNC3(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "enable_delay",
	    CTLFLAG_RD, &regnode->std_param.enable_delay, 0,
	    "Enable delay (in us)");
	FUNC3(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "enable_cnt",
	    CTLFLAG_RD, &regnode->enable_cnt, 0,
	    "The regulator enable counter");
	FUNC6(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "boot_on",
	    CTLFLAG_RD, (uint8_t *) &regnode->std_param.boot_on, 0,
	    "Is enabled on boot");
	FUNC6(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "always_on",
	    CTLFLAG_RD, (uint8_t *)&regnode->std_param.always_on, 0,
	    "Is always enabled");

	FUNC5(&regnode->sysctl_ctx,
	    FUNC7(regnode_oid),
	    OID_AUTO, "uvolt",
	    CTLTYPE_INT | CTLFLAG_RD,
	    regnode, 0, regnode_uvolt_sysctl,
	    "I",
	    "Current voltage (in uV)");

	return (regnode);
}