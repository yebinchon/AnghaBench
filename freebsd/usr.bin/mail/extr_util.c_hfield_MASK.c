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
struct message {int m_lines; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINESIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int,char**) ; 
 char* FUNC1 (char*,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct message*) ; 

char *
FUNC5(const char *field, struct message *mp)
{
	FILE *ibuf;
	char linebuf[LINESIZE];
	int lc;
	char *hfield;
	char *colon, *oldhfield = NULL;

	ibuf = FUNC4(mp);
	if ((lc = mp->m_lines - 1) < 0)
		return (NULL);
	if (FUNC2(ibuf, linebuf, LINESIZE) < 0)
		return (NULL);
	while (lc > 0) {
		if ((lc = FUNC0(ibuf, linebuf, lc, &colon)) < 0)
			return (oldhfield);
		if ((hfield = FUNC1(linebuf, colon, field)) != NULL)
			oldhfield = FUNC3(hfield, oldhfield);
	}
	return (oldhfield);
}