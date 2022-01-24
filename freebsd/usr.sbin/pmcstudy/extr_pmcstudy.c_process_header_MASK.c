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
struct counters {int /*<<< orphan*/  counter_name; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int MAX_NLEN ; 
 struct counters* cnts ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(int idx, char *p)
{
	struct counters *up;
	int i, len, nlen;
	/* 
	 * Given header element idx, at p in
	 * form 's/NN/nameof'
	 * process the entry to pull out the name and
	 * the CPU number.
	 */
	if (FUNC3(p, "s/", 2)) {
		FUNC0("Check -- invalid header no s/ in %s\n",
		       p);
		return;
	}
	up = &cnts[idx];
	up->cpu = FUNC5(&p[2], NULL, 10);
	len = FUNC2(p);
	for (i=2; i<len; i++) {
		if (p[i] == '/') {
			nlen = FUNC2(&p[(i+1)]);
			if (nlen < (MAX_NLEN-1)) {
				FUNC1(up->counter_name, &p[(i+1)]);
			} else {
				FUNC4(up->counter_name, &p[(i+1)], (MAX_NLEN-1));
			}
		}
	}
}