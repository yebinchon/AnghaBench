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
struct TYPE_3__ {int bus; int target; int lun; } ;
typedef  TYPE_1__ pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static inline void FUNC1(pqi_scsi_dev_t *device,
	int bus, int target, int lun)
{
	FUNC0("IN\n");

	device->bus = bus;
	device->target = target;
	device->lun = lun;

	FUNC0("OUT\n");
}