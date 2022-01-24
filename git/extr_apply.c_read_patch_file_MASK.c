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
struct strbuf {scalar_t__ len; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLOP ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct strbuf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct strbuf *sb, int fd)
{
	if (FUNC3(sb, fd, 0) < 0)
		return FUNC0("git apply: failed to read");

	/*
	 * Make sure that we have some slop in the buffer
	 * so that we can do speculative "memcmp" etc, and
	 * see to it that it is NUL-filled.
	 */
	FUNC2(sb, SLOP);
	FUNC1(sb->buf + sb->len, 0, SLOP);
	return 0;
}