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
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  phy_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct phynode*,int /*<<< orphan*/ ) ; 
 struct phynode* FUNC3 (int /*<<< orphan*/ ,intptr_t) ; 

int
FUNC4(device_t consumer_dev, device_t provider_dev, intptr_t id,
    phy_t *phy)
{
	struct phynode *phynode;

	FUNC0();

	phynode = FUNC3(provider_dev, id);
	if (phynode == NULL) {
		FUNC1();
		return (ENODEV);
	}
	*phy = FUNC2(phynode, consumer_dev);
	FUNC1();

	return (0);
}