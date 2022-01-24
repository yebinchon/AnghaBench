#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phynode_init_def {int /*<<< orphan*/  ofw_node; int /*<<< orphan*/  id; } ;
struct phynode {int /*<<< orphan*/  ofw_node; int /*<<< orphan*/  pdev; int /*<<< orphan*/  id; int /*<<< orphan*/  consumers_list; void* softc; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__* phynode_class_t ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int /*<<< orphan*/  kobj_class_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PHY ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

struct phynode *
FUNC4(device_t pdev, phynode_class_t phynode_class,
    struct phynode_init_def *def)
{
	struct phynode *phynode;


	/* Create object and initialize it. */
	phynode = FUNC2(sizeof(struct phynode), M_PHY, M_WAITOK | M_ZERO);
	FUNC1((kobj_t)phynode, (kobj_class_t)phynode_class);
	FUNC3(&phynode->lock, "Phy node lock");

	/* Allocate softc if required. */
	if (phynode_class->size > 0) {
		phynode->softc = FUNC2(phynode_class->size, M_PHY,
		    M_WAITOK | M_ZERO);
	}

	/* Rest of init. */
	FUNC0(&phynode->consumers_list);
	phynode->id = def->id;
	phynode->pdev = pdev;
#ifdef FDT
	phynode->ofw_node = def->ofw_node;
#endif

	return (phynode);
}