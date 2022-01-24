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
typedef  int /*<<< orphan*/  semid_t ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 scalar_t__ ENOSPC ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(void *arg)
{
	semid_t id;
	int i, max;

	max = (intptr_t)arg;
	for (i = 0; i < max + 1; i++) {
		if (FUNC1(&id, 1) < 0) {
			if (errno == ENOSPC)
				return (FUNC0(0, 0));
			return (FUNC0(1, errno));
		}
	}
	return (FUNC0(2, 0));
}