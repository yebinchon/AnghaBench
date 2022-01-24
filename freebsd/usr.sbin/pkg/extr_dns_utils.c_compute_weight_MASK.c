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
struct dns_srvinfo {int weight; int finalweight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int) ; 
 int FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct dns_srvinfo **d, int first, int last)
{
	int i, j, totalweight;
	int *chosen;

	totalweight = 0;
	
	for (i = 0; i <= last; i++)
		totalweight += d[i]->weight;

	if (totalweight == 0)
		return;

	chosen = FUNC1(sizeof(int) * (last - first + 1));

	for (i = 0; i <= last; i++) {
		for (;;) {
			chosen[i] = FUNC2() % (d[i]->weight * 100 / totalweight);
			for (j = 0; j < i; j++) {
				if (chosen[i] == chosen[j])
					break;
			}
			if (j == i) {
				d[i]->finalweight = chosen[i];
				break;
			}
		}
	}

	FUNC0(chosen);
}