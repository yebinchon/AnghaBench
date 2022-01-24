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
struct resource_list {int dummy; } ;
struct pccard_ivar {struct resource_list resources; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct pccard_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int PCCARD_NDRQ ; 
 int PCCARD_NIRQ ; 
 int PCCARD_NMEM ; 
 int PCCARD_NPORT ; 
 int SYS_RES_DRQ ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource_list*,int,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, int type, int rid,
    rman_res_t start, rman_res_t count)
{
	struct pccard_ivar *devi = FUNC0(child);
	struct resource_list *rl = &devi->resources;

	if (type != SYS_RES_IOPORT && type != SYS_RES_MEMORY
	    && type != SYS_RES_IRQ && type != SYS_RES_DRQ)
		return (EINVAL);
	if (rid < 0)
		return (EINVAL);
	if (type == SYS_RES_IOPORT && rid >= PCCARD_NPORT)
		return (EINVAL);
	if (type == SYS_RES_MEMORY && rid >= PCCARD_NMEM)
		return (EINVAL);
	if (type == SYS_RES_IRQ && rid >= PCCARD_NIRQ)
		return (EINVAL);
	if (type == SYS_RES_DRQ && rid >= PCCARD_NDRQ)
		return (EINVAL);

	FUNC2(rl, type, rid, start, start + count - 1, count);
	if (NULL != FUNC3(rl, FUNC1(dev), dev,
	    type, &rid, start, start + count - 1, count, 0))
		return 0;
	else
		return ENOMEM;
}