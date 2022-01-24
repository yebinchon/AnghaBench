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
typedef  scalar_t__ uint64_t ;
struct dn_heap {scalar_t__ elements; TYPE_1__* p; } ;
typedef  int /*<<< orphan*/  h ;
struct TYPE_2__ {scalar_t__ key; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dn_heap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dn_heap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dn_heap*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dn_heap*,int,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{
	struct dn_heap h;
	int i, n, n2, n3;

	FUNC8();
	return 0;

	/* n = elements, n2 = cycles */
	n = (argc > 1) ? FUNC0(argv[1]) : 0;
	if (n <= 0 || n > 1000000)
		n = 100;
	n2 = (argc > 2) ? FUNC0(argv[2]) : 0;
	if (n2 <= 0)
		n = 1000000;
	n3 = (argc > 3) ? FUNC0(argv[3]) : 0;
	FUNC1(&h, sizeof(h));
	FUNC3(&h, n, -1);
	while (n2-- > 0) {
		uint64_t prevk = 0;
		for (i=0; i < n; i++)
			FUNC4(&h, n3 ? n-i: FUNC7(), (void *)(100+i));
		
		for (i=0; h.elements > 0; i++) {
			uint64_t k = h.p[0].key;
			if (k < prevk)
				FUNC5("wrong sequence\n");
			prevk = k;
			if (0)
			FUNC6("%d key %llu, val %p\n",
				i, h.p[0].key, h.p[0].object);
			FUNC2(&h, NULL);
		}
	}
	return 0;
}