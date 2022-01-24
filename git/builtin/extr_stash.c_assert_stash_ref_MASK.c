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
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct stash_info {TYPE_1__ revision; int /*<<< orphan*/  is_stash_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct stash_info*) ; 

__attribute__((used)) static void FUNC4(struct stash_info *info)
{
	if (!info->is_stash_ref) {
		FUNC1(FUNC0("'%s' is not a stash reference"), info->revision.buf);
		FUNC3(info);
		FUNC2(1);
	}
}