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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATI_IXP_BASE_RATE ; 

__attribute__((used)) static uint32_t
FUNC0(kobj_t obj, void *data, uint32_t spd)
{
	/* XXX We're supposed to do VRA/DRA processing right here */
	return (ATI_IXP_BASE_RATE);
}