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
typedef  int /*<<< orphan*/ * xen_intr_handle_t ;
struct xenisrc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int first_evtchn_irq ; 
 scalar_t__ FUNC1 (int) ; 
 int xen_intr_auto_vector_count ; 

__attribute__((used)) static struct xenisrc *
FUNC2(xen_intr_handle_t handle)
{
	int vector;

	if (handle == NULL)
		return (NULL);

	vector = *(int *)handle;
	FUNC0(vector >= first_evtchn_irq &&
	    vector < (first_evtchn_irq + xen_intr_auto_vector_count),
	    ("Xen interrupt vector is out of range"));

	return ((struct xenisrc *)FUNC1(vector));
}