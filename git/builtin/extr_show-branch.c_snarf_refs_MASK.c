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

/* Variables and functions */
 int /*<<< orphan*/  append_head_ref ; 
 int /*<<< orphan*/  append_remote_ref ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ref_name_cnt ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(int head, int remotes)
{
	if (head) {
		int orig_cnt = ref_name_cnt;

		FUNC0(append_head_ref, NULL);
		FUNC1(orig_cnt, ref_name_cnt);
	}
	if (remotes) {
		int orig_cnt = ref_name_cnt;

		FUNC0(append_remote_ref, NULL);
		FUNC1(orig_cnt, ref_name_cnt);
	}
}