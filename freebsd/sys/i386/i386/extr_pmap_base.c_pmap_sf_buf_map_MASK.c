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
struct sf_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pm_sf_buf_map ) (struct sf_buf*) ;} ;

/* Variables and functions */
 TYPE_1__* pmap_methods_ptr ; 
 int /*<<< orphan*/  FUNC0 (struct sf_buf*) ; 

void
FUNC1(struct sf_buf *sf)
{

	pmap_methods_ptr->pm_sf_buf_map(sf);
}