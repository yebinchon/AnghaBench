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
struct commit_extra_header {int /*<<< orphan*/  len; void* value; struct commit_extra_header* next; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char const*,int,char const**) ; 
 char* FUNC1 (char const*,char,int) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,int) ; 
 void* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 struct commit_extra_header* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int) ; 

__attribute__((used)) static struct commit_extra_header *FUNC8(
	const char *buffer, size_t size,
	const char **exclude)
{
	struct commit_extra_header *extra = NULL, **tail = &extra, *it = NULL;
	const char *line, *next, *eof, *eob;
	struct strbuf buf = STRBUF_INIT;

	for (line = buffer, eob = line + size;
	     line < eob && *line != '\n';
	     line = next) {
		next = FUNC1(line, '\n', eob - line);
		next = next ? next + 1 : eob;
		if (*line == ' ') {
			/* continuation */
			if (it)
				FUNC3(&buf, line + 1, next - (line + 1));
			continue;
		}
		if (it)
			it->value = FUNC4(&buf, &it->len);
		FUNC5(&buf);
		it = NULL;

		eof = FUNC1(line, ' ', next - line);
		if (!eof)
			eof = next;
		else if (FUNC2(line, eof - line) ||
			 FUNC0(line, eof - line, exclude))
			continue;

		it = FUNC6(1, sizeof(*it));
		it->key = FUNC7(line, eof-line);
		*tail = it;
		tail = &it->next;
		if (eof + 1 < next)
			FUNC3(&buf, eof + 1, next - (eof + 1));
	}
	if (it)
		it->value = FUNC4(&buf, &it->len);
	return extra;
}