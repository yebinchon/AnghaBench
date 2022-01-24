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
struct nvme_controller {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct nvme_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvme_controller*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct nvme_controller	*ctrlr;

	ctrlr = FUNC0(dev);
	return (FUNC1(ctrlr));
}