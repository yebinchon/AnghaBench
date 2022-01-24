#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct phynode_usb_sc {int /*<<< orphan*/  std_param; } ;
struct phynode_usb_init_def {int /*<<< orphan*/  std_param; int /*<<< orphan*/  phynode_init_def; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  phynode_class_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct phynode* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct phynode_usb_sc* FUNC1 (struct phynode*) ; 

struct phynode *
FUNC2(device_t pdev, phynode_class_t phynode_class,
    struct phynode_usb_init_def *def)

{
	struct phynode *phynode;
	struct phynode_usb_sc *sc;

	phynode = FUNC0(pdev, phynode_class, &def->phynode_init_def);
	if (phynode == NULL)
		return (NULL);
	sc = FUNC1(phynode);
	sc->std_param = def->std_param;
	return (phynode);
}