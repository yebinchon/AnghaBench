#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct netmap_mem_d {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* nmd_if_offset ) (struct netmap_mem_d*,void const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_mem_d*,void const*) ; 

ssize_t
FUNC3(struct netmap_mem_d *nmd, const void *off)
{
	ssize_t rv;

	FUNC0(nmd);
	rv = nmd->ops->nmd_if_offset(nmd, off);
	FUNC1(nmd);

	return rv;
}