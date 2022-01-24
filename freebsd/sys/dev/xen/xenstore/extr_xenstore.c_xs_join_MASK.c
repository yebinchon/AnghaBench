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
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 struct sbuf* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char) ; 

struct sbuf *
FUNC4(const char *dir, const char *name)
{
	struct sbuf *sb;

	sb = FUNC2();
	FUNC0(sb, dir);
	if (name[0] != '\0') {
		FUNC3(sb, '/');
		FUNC0(sb, name);
	}
	FUNC1(sb);

	return (sb);
}