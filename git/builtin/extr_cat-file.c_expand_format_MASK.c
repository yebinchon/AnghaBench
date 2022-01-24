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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int,void*) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static size_t FUNC3(struct strbuf *sb, const char *start, void *data)
{
	const char *end;

	if (*start != '(')
		return 0;
	end = FUNC2(start + 1, ')');
	if (!end)
		FUNC0("format element '%s' does not end in ')'", start);

	FUNC1(sb, start + 1, end - start - 1, data);

	return end - start + 1;
}