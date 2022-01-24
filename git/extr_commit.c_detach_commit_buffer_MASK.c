#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct commit_buffer {unsigned long size; int /*<<< orphan*/ * buffer; } ;
struct commit {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parsed_objects; } ;
struct TYPE_3__ {int /*<<< orphan*/  buffer_slab; } ;

/* Variables and functions */
 struct commit_buffer* FUNC0 (int /*<<< orphan*/ ,struct commit*) ; 
 TYPE_2__* the_repository ; 

const void *FUNC1(struct commit *commit, unsigned long *sizep)
{
	struct commit_buffer *v = FUNC0(
		the_repository->parsed_objects->buffer_slab, commit);
	void *ret;

	if (!v) {
		if (sizep)
			*sizep = 0;
		return NULL;
	}
	ret = v->buffer;
	if (sizep)
		*sizep = v->size;

	v->buffer = NULL;
	v->size = 0;
	return ret;
}