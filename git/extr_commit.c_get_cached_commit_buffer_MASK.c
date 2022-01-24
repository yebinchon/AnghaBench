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
struct repository {TYPE_1__* parsed_objects; } ;
struct commit_buffer {unsigned long size; void const* buffer; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer_slab; } ;

/* Variables and functions */
 struct commit_buffer* FUNC0 (int /*<<< orphan*/ ,struct commit const*) ; 

const void *FUNC1(struct repository *r, const struct commit *commit, unsigned long *sizep)
{
	struct commit_buffer *v = FUNC0(
		r->parsed_objects->buffer_slab, commit);
	if (!v) {
		if (sizep)
			*sizep = 0;
		return NULL;
	}
	if (sizep)
		*sizep = v->size;
	return v->buffer;
}