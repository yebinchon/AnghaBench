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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char*,size_t) ; 

__attribute__((used)) static char *
FUNC4(FILE *b, size_t *n)
{
	char *cp;
	size_t len;
	static char *buf;
	static size_t bufsize;

	if ((cp = FUNC1(b, &len)) == NULL)
		return (NULL);

	if (cp[len - 1] != '\n')
		len++;
	if (len + 1 > bufsize) {
		do {
			bufsize += 1024;
		} while (len + 1 > bufsize);
		if ((buf = FUNC3(buf, bufsize)) == NULL)
			FUNC0(EXIT_FAILURE, NULL);
	}
	FUNC2(buf, cp, len - 1);
	buf[len - 1] = '\n';
	buf[len] = '\0';
	if (n != NULL)
		*n = len;
	return (buf);
}