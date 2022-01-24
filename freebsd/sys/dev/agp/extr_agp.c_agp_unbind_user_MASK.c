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
struct agp_memory {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ agp_unbind ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct agp_memory*) ; 
 int ENOENT ; 
 struct agp_memory* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, agp_unbind *unbind)
{
	struct agp_memory *mem = FUNC1(dev, unbind->key);

	if (!mem)
		return ENOENT;

	return FUNC0(dev, mem);
}