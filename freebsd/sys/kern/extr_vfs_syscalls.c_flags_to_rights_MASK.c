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
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CREATE ; 
 int /*<<< orphan*/  CAP_FEXECVE ; 
 int /*<<< orphan*/  CAP_FLOCK ; 
 int /*<<< orphan*/  CAP_FSYNC ; 
 int /*<<< orphan*/  CAP_FTRUNCATE ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_SEEK ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int O_ACCMODE ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_EXEC ; 
 int O_EXLOCK ; 
 int O_FSYNC ; 
#define  O_RDONLY 130 
#define  O_RDWR 129 
 int O_SHLOCK ; 
 int O_SYNC ; 
 int O_TRUNC ; 
#define  O_WRONLY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC1(int flags, cap_rights_t *rightsp)
{

	if (flags & O_EXEC) {
		FUNC0(rightsp, CAP_FEXECVE);
	} else {
		switch ((flags & O_ACCMODE)) {
		case O_RDONLY:
			FUNC0(rightsp, CAP_READ);
			break;
		case O_RDWR:
			FUNC0(rightsp, CAP_READ);
			/* FALLTHROUGH */
		case O_WRONLY:
			FUNC0(rightsp, CAP_WRITE);
			if (!(flags & (O_APPEND | O_TRUNC)))
				FUNC0(rightsp, CAP_SEEK);
			break;
		}
	}

	if (flags & O_CREAT)
		FUNC0(rightsp, CAP_CREATE);

	if (flags & O_TRUNC)
		FUNC0(rightsp, CAP_FTRUNCATE);

	if (flags & (O_SYNC | O_FSYNC))
		FUNC0(rightsp, CAP_FSYNC);

	if (flags & (O_EXLOCK | O_SHLOCK))
		FUNC0(rightsp, CAP_FLOCK);
}