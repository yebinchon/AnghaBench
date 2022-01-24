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
struct kinfo_file {int kf_fd; } ;

/* Variables and functions */
 int INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kinfo_file*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct kinfo_file* FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	struct kinfo_file *kif;
	int cnt, i, highest;

	kif = FUNC3(FUNC2(), &cnt);
	if (kif == NULL)
		FUNC0("kinfo_getfile");
	highest = INT_MIN;
	for (i = 0; i < cnt; i++)
		if (kif[i].kf_fd > highest)
			highest = kif[i].kf_fd;
	FUNC1(kif);
	return (highest);
}