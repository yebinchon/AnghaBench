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
struct syscall {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct syscall*,int /*<<< orphan*/ ) ; 
 struct syscall* decoded_syscalls ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC2 (struct syscall*) ; 
 int /*<<< orphan*/  syscalls ; 

void
FUNC3(void)
{
	struct syscall *sc;

	FUNC0(&syscalls);
	for (sc = decoded_syscalls; sc->name != NULL; sc++) {
#ifndef __LP64__
		quad_fixup(sc);
#endif
		FUNC1(&syscalls, sc, entries);
	}
}