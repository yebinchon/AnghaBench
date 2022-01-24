#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t n_rdep; TYPE_1__* rdep; } ;
struct TYPE_9__ {TYPE_5__* p; } ;
struct TYPE_8__ {TYPE_5__* p; } ;
typedef  TYPE_2__ DEP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 

__attribute__((used)) static DEP *
FUNC3(DEP * d, size_t * nd)
{
	size_t i, j, k, n, N;

	N = n = *nd;
	for (i = 0; i < n; i++) {
		FUNC2(d[i].p);
		for (j = 0; j < d[i].p->n_rdep; j++) {
			for (k = 0; k < N; k++) {
				if (d[i].p->rdep[j].p == d[k].p)
					break;
			}
			if (k == N) {
				N++;
				if (N >= *nd) {
					*nd += *nd;
					d = FUNC1(d, *nd * sizeof(DEP));
					if (d == NULL)
						FUNC0(1, "realloc(d)");
				}
				d[k].p = d[i].p->rdep[j].p;
			}
		}
	}
	*nd = N;

	return d;
}