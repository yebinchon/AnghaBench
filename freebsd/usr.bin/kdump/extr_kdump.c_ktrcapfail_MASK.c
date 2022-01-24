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
struct ktr_cap_fail {int cap_type; int /*<<< orphan*/  cap_held; int /*<<< orphan*/  cap_needed; } ;

/* Variables and functions */
#define  CAPFAIL_INCREASE 131 
#define  CAPFAIL_LOOKUP 130 
#define  CAPFAIL_NOTCAPABLE 129 
#define  CAPFAIL_SYSCALL 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct ktr_cap_fail *ktr)
{
	switch (ktr->cap_type) {
	case CAPFAIL_NOTCAPABLE:
		/* operation on fd with insufficient capabilities */
		FUNC0("operation requires ");
		FUNC1(stdout, &ktr->cap_needed);
		FUNC0(", descriptor holds ");
		FUNC1(stdout, &ktr->cap_held);
		break;
	case CAPFAIL_INCREASE:
		/* requested more capabilities than fd already has */
		FUNC0("attempt to increase capabilities from ");
		FUNC1(stdout, &ktr->cap_held);
		FUNC0(" to ");
		FUNC1(stdout, &ktr->cap_needed);
		break;
	case CAPFAIL_SYSCALL:
		/* called restricted syscall */
		FUNC0("disallowed system call");
		break;
	case CAPFAIL_LOOKUP:
		/* absolute or AT_FDCWD path, ".." path, etc. */
		FUNC0("restricted VFS lookup");
		break;
	default:
		FUNC0("unknown capability failure: ");
		FUNC1(stdout, &ktr->cap_needed);
		FUNC0(" ");
		FUNC1(stdout, &ktr->cap_held);
		break;
	}
	FUNC0("\n");
}