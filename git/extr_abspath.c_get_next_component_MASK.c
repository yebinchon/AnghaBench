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
struct strbuf {char* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(struct strbuf *next, struct strbuf *remaining)
{
	char *start = NULL;
	char *end = NULL;

	FUNC3(next);

	/* look for the next component */
	/* Skip sequences of multiple path-separators */
	for (start = remaining->buf; FUNC0(*start); start++)
		; /* nothing */
	/* Find end of the path component */
	for (end = start; *end && !FUNC0(*end); end++)
		; /* nothing */

	FUNC1(next, start, end - start);
	/* remove the component from 'remaining' */
	FUNC2(remaining, 0, end - remaining->buf);
}