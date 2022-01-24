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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ PCI_DOMAINMAX ; 
 int PCI_RES_BUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	if (type == PCI_RES_BUS)
		return (FUNC1(PCI_DOMAINMAX -
		    FUNC0(dev), child, rid, r));
	return (FUNC2(dev, child, type, rid, r));
}