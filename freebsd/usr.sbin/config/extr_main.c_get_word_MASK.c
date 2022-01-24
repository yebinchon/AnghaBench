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
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

char *
FUNC3(FILE *fp)
{
	static char line[80];
	int ch;
	char *cp;
	int escaped_nl = 0;

begin:
	while ((ch = FUNC0(fp)) != EOF)
		if (ch != ' ' && ch != '\t')
			break;
	if (ch == EOF)
		return ((char *)EOF);
	if (ch == '\\'){
		escaped_nl = 1;
		goto begin;
	}
	if (ch == '\n') {
		if (escaped_nl){
			escaped_nl = 0;
			goto begin;
		}
		else
			return (NULL);
	}
	cp = line;
	*cp++ = ch;
	/* Negation operator is a word by itself. */
	if (ch == '!') {
		*cp = 0;
		return (line);
	}
	while ((ch = FUNC0(fp)) != EOF) {
		if (FUNC1(ch))
			break;
		*cp++ = ch;
	}
	*cp = 0;
	if (ch == EOF)
		return ((char *)EOF);
	(void) FUNC2(ch, fp);
	return (line);
}