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
struct sockbuf {int sb_flags; int /*<<< orphan*/  sb_sx; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SBL_NOINTR ; 
 int SBL_VALID ; 
 int SBL_WAIT ; 
 int SB_NOINTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct sockbuf *sb, int flags)
{

	FUNC0((flags & SBL_VALID) == flags,
	    ("sblock: flags invalid (0x%x)", flags));

	if (flags & SBL_WAIT) {
		if ((sb->sb_flags & SB_NOINTR) ||
		    (flags & SBL_NOINTR)) {
			FUNC2(&sb->sb_sx);
			return (0);
		}
		return (FUNC3(&sb->sb_sx));
	} else {
		if (FUNC1(&sb->sb_sx) == 0)
			return (EWOULDBLOCK);
		return (0);
	}
}