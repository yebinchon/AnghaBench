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
typedef  int /*<<< orphan*/  timestamp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static timestamp_t FUNC2(const char *buf, const char *tail)
{
	const char *dateptr;

	if (buf + 6 >= tail)
		return 0;
	if (FUNC0(buf, "author", 6))
		return 0;
	while (buf < tail && *buf++ != '\n')
		/* nada */;
	if (buf + 9 >= tail)
		return 0;
	if (FUNC0(buf, "committer", 9))
		return 0;
	while (buf < tail && *buf++ != '>')
		/* nada */;
	if (buf >= tail)
		return 0;
	dateptr = buf;
	while (buf < tail && *buf++ != '\n')
		/* nada */;
	if (buf >= tail)
		return 0;
	/* dateptr < buf && buf[-1] == '\n', so parsing will stop at buf-1 */
	return FUNC1(dateptr, NULL, 10);
}