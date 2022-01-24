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
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char) ; 

void
FUNC1(struct sbuf *sb, const char *src)
{

	while (*src != '\0') {
		if (*src == '"' || *src == '\\')
			FUNC0(sb, '\\');
		FUNC0(sb, *src++);
	}
}