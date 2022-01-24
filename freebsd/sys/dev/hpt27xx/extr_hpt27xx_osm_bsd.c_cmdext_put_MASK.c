#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* vbus_ext; struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* cmdext_list; } ;
typedef  TYPE_2__* POS_CMDEXT ;

/* Variables and functions */

__attribute__((used)) static __inline void FUNC0(POS_CMDEXT p)
{
	p->next = p->vbus_ext->cmdext_list;
	p->vbus_ext->cmdext_list = p;
}