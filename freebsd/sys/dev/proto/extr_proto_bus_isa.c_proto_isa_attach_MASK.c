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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISA_NDRQ ; 
 int /*<<< orphan*/  ISA_NIRQ ; 
 int /*<<< orphan*/  ISA_NMEM ; 
 int /*<<< orphan*/  ISA_NPORT ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{

	FUNC1(dev, SYS_RES_IRQ, ISA_NIRQ);
	FUNC1(dev, SYS_RES_DRQ, ISA_NDRQ);
	FUNC1(dev, SYS_RES_IOPORT, ISA_NPORT);
	FUNC1(dev, SYS_RES_MEMORY, ISA_NMEM);
	return (FUNC0(dev));
}