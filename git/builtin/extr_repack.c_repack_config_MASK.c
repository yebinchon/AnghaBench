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
 void* delta_base_offset ; 
 void* FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*,char const*,void*) ; 
 void* pack_kept_objects ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 void* use_delta_islands ; 
 void* write_bitmaps ; 

__attribute__((used)) static int FUNC3(const char *var, const char *value, void *cb)
{
	if (!FUNC2(var, "repack.usedeltabaseoffset")) {
		delta_base_offset = FUNC0(var, value);
		return 0;
	}
	if (!FUNC2(var, "repack.packkeptobjects")) {
		pack_kept_objects = FUNC0(var, value);
		return 0;
	}
	if (!FUNC2(var, "repack.writebitmaps") ||
	    !FUNC2(var, "pack.writebitmaps")) {
		write_bitmaps = FUNC0(var, value);
		return 0;
	}
	if (!FUNC2(var, "repack.usedeltaislands")) {
		use_delta_islands = FUNC0(var, value);
		return 0;
	}
	return FUNC1(var, value, cb);
}