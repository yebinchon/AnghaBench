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
struct socket {int dummy; } ;
struct sockbuf {int sb_flags; int /*<<< orphan*/  sb_aiotask; } ;

/* Variables and functions */
 int SB_AIO ; 
 int SB_AIO_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 

void
FUNC3(struct socket *so, struct sockbuf *sb)
{

	FUNC0(sb);
	sb->sb_flags &= ~SB_AIO;
	if (sb->sb_flags & SB_AIO_RUNNING)
		return;
	sb->sb_flags |= SB_AIO_RUNNING;
	FUNC2(so);
	FUNC1(&sb->sb_aiotask);
}