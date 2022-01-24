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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int num_elem; int max_elem; size_t tail; int /*<<< orphan*/  lock; int /*<<< orphan*/ * elem_array; } ;
typedef  TYPE_1__ pqi_taglist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(pqi_taglist_t *taglist, uint32_t elem)
{

	FUNC1(&(taglist->lock));
	/*DBG_FUNC("IN\n");*/

	FUNC0(taglist->num_elem < taglist->max_elem);

	if (taglist->num_elem < taglist->max_elem) {
		taglist->elem_array[taglist->tail] = elem;
		taglist->num_elem++;
		taglist->tail = (taglist->tail + 1) % taglist->max_elem;
	}

	FUNC2(&taglist->lock);

	/*DBG_FUNC("OUT\n");*/
}