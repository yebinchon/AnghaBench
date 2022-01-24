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
typedef  long uint32_t ;
struct mfi_evt_log_state {long newest_seq_num; long oldest_seq_num; long clear_seq_num; long shutdown_seq_num; long boot_seq_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 long FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mfi_evt_log_state *info, char *arg, uint32_t *seq)
{
	char *cp;
	long val;

	if (FUNC0(arg, "newest") == 0) {
		*seq = info->newest_seq_num;
		return (0);
	}
	if (FUNC0(arg, "oldest") == 0) {
		*seq = info->oldest_seq_num;
		return (0);
	}
	if (FUNC0(arg, "clear") == 0) {
		*seq = info->clear_seq_num;
		return (0);
	}
	if (FUNC0(arg, "shutdown") == 0) {
		*seq = info->shutdown_seq_num;
		return (0);
	}
	if (FUNC0(arg, "boot") == 0) {
		*seq = info->boot_seq_num;
		return (0);
	}
	val = FUNC1(arg, &cp, 0);
	if (*cp != '\0' || val < 0) {
		errno = EINVAL;
		return (-1);
	}
	*seq = val;
	return (0);
}