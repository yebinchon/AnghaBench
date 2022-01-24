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
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,char const*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC1(struct sbuf *sb, const char *name, unsigned int from,
    unsigned int to)
{
	unsigned int size;

	if (from == to)
		return;

	size = to - from + 1;
	if (size == 0)
		return;

	/* XXX: need humanize_number(3) in libkern for a more readable 'size' */
	FUNC0(sb, "%-15s %#x-%#x [%u]\n", name, from, to, size);
}