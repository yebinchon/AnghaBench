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
struct gv_volume {void* size; TYPE_1__* provider; } ;
typedef  void* off_t ;
struct TYPE_2__ {void* mediasize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(struct gv_volume *v, off_t size)
{
	if (v == NULL)
		return;
	if (v->provider != NULL) {
		FUNC0();
		v->provider->mediasize = size;
		FUNC1();
	}
	v->size = size;
}