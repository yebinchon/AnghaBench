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
typedef  int /*<<< orphan*/  freq ;

/* Variables and functions */
 scalar_t__ EPERM ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  freq_mib ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static int
FUNC1(int freq)
{

	if (FUNC0(freq_mib, 4, NULL, NULL, &freq, sizeof(freq))) {
		if (errno != EPERM)
			return (-1);
	}

	return (0);
}