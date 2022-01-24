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
typedef  int uint64_t ;
struct string_list {scalar_t__ nr; } ;
struct packed_git {int dummy; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ big_pack_threshold ; 
 int FUNC2 (struct packed_git*) ; 
 struct packed_git* FUNC3 (struct string_list*,scalar_t__) ; 
 scalar_t__ gc_auto_pack_limit ; 
 scalar_t__ gc_auto_threshold ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 () ; 

__attribute__((used)) static int FUNC9(void)
{
	/*
	 * Setting gc.auto to 0 or negative can disable the
	 * automatic gc.
	 */
	if (gc_auto_threshold <= 0)
		return 0;

	/*
	 * If there are too many loose objects, but not too many
	 * packs, we run "repack -d -l".  If there are too many packs,
	 * we run "repack -A -d -l".  Otherwise we tell the caller
	 * there is no need.
	 */
	if (FUNC7()) {
		struct string_list keep_pack = STRING_LIST_INIT_NODUP;

		if (big_pack_threshold) {
			FUNC3(&keep_pack, big_pack_threshold);
			if (keep_pack.nr >= gc_auto_pack_limit) {
				big_pack_threshold = 0;
				FUNC5(&keep_pack, 0);
				FUNC3(&keep_pack, 0);
			}
		} else {
			struct packed_git *p = FUNC3(&keep_pack, 0);
			uint64_t mem_have, mem_want;

			mem_have = FUNC8();
			mem_want = FUNC2(p);

			/*
			 * Only allow 1/2 of memory for pack-objects, leave
			 * the rest for the OS and other processes in the
			 * system.
			 */
			if (!mem_have || mem_want < mem_have / 2)
				FUNC5(&keep_pack, 0);
		}

		FUNC0(&keep_pack);
		FUNC5(&keep_pack, 0);
	} else if (FUNC6())
		FUNC1();
	else
		return 0;

	if (FUNC4(NULL, "pre-auto-gc", NULL))
		return 0;
	return 1;
}