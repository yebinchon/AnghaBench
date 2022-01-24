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
 scalar_t__ FUNC0 (char const*,char*) ; 

const char *
FUNC1(const char *part_type, const char *fs_type) {
	if (FUNC0(part_type, "VTOC8") == 0) {
		if (FUNC0(fs_type, "ufs") == 0) {
			return ("/boot/boot1");
		} else if (FUNC0(fs_type, "zfs") == 0) {
			return ("/boot/zfsboot");
		}
	}
	return (NULL);
}