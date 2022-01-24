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
struct kinfo_file {int /*<<< orphan*/ * kf_path; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct kinfo_file *kif)
{
	size_t len, olen;

	/*
	 * Simulate vn_fullpath returning changing values for a given
	 * vp during e.g. coredump.
	 */
	len = (FUNC0() % (sizeof(kif->kf_path) - 2)) + 1;
	olen = FUNC2(kif->kf_path);
	if (len < olen)
		FUNC1(&kif->kf_path[len - 1], "$");
	else
		for (; olen < len; olen++)
			FUNC1(&kif->kf_path[olen], "A");
}