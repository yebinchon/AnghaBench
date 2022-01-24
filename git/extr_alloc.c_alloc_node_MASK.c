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
struct alloc_state {size_t nr; char* p; char** slabs; int /*<<< orphan*/  count; scalar_t__ slab_nr; int /*<<< orphan*/  slab_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t BLOCKING ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC2 (size_t) ; 

__attribute__((used)) static inline void *FUNC3(struct alloc_state *s, size_t node_size)
{
	void *ret;

	if (!s->nr) {
		s->nr = BLOCKING;
		s->p = FUNC2(BLOCKING * node_size);

		FUNC0(s->slabs, s->slab_nr + 1, s->slab_alloc);
		s->slabs[s->slab_nr++] = s->p;
	}
	s->nr--;
	s->count++;
	ret = s->p;
	s->p = (char *)s->p + node_size;
	FUNC1(ret, 0, node_size);

	return ret;
}