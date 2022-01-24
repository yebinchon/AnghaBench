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
typedef  int /*<<< orphan*/  curfreq ;

/* Variables and functions */
 int /*<<< orphan*/  freq_mib ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(void)
{
	size_t len;
	int curfreq;

	len = sizeof(curfreq);
	if (FUNC0(freq_mib, 4, &curfreq, &len, NULL, 0) != 0) {
		if (vflag)
			FUNC1("error reading current CPU frequency");
		curfreq = 0;
	}
	return (curfreq);
}