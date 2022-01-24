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
struct parsed_object_pool {int /*<<< orphan*/  buffer_slab; } ;
struct commit_buffer {scalar_t__ size; int /*<<< orphan*/  buffer; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct commit_buffer* FUNC1 (int /*<<< orphan*/ ,struct commit*) ; 

void FUNC2(struct parsed_object_pool *pool, struct commit *commit)
{
	struct commit_buffer *v = FUNC1(
		pool->buffer_slab, commit);
	if (v) {
		FUNC0(v->buffer);
		v->size = 0;
	}
}