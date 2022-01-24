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
typedef  void* uint64_t ;
struct dn_heap_entry {int dummy; } ;
struct dn_heap {int elements; int size; TYPE_1__* p; } ;
struct TYPE_3__ {void* key; void* object; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,void*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,struct dn_heap_entry) ; 
 int /*<<< orphan*/  FUNC3 (struct dn_heap*,int) ; 
 scalar_t__ FUNC4 (struct dn_heap*,int) ; 

int
FUNC5(struct dn_heap *h, uint64_t key1, void *p)
{
	int son = h->elements;

	//log("%s key %llu p %p\n", __FUNCTION__, key1, p);
	if (p == NULL) { /* data already there, set starting point */
		son = key1;
	} else { /* insert new element at the end, possibly resize */
		son = h->elements;
		if (son == h->size) /* need resize... */
			// XXX expand by 16 or so
			if (FUNC4(h, h->elements+16) )
				return 1; /* failure... */
		h->p[son].object = p;
		h->p[son].key = key1;
		h->elements++;
	}
	/* make sure that son >= father along the path */
	while (son > 0) {
		int father = FUNC1(son);
		struct dn_heap_entry tmp;

		if (FUNC0( h->p[father].key, h->p[son].key ) )
			break; /* found right position */
		/* son smaller than father, swap and repeat */
		FUNC2(h->p[son], h->p[father], tmp);
		FUNC3(h, son);
		son = father;
	}
	FUNC3(h, son);
	return 0;
}