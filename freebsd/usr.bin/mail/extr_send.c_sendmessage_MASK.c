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
struct message {long m_size; } ;
struct ignoretab {int dummy; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int LINESIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct ignoretab* ignoreall ; 
 scalar_t__ FUNC6 (char*,struct ignoretab*) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 int FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct message*) ; 
 int /*<<< orphan*/  FUNC10 (struct message*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 

int
FUNC13(struct message *mp, FILE *obuf, struct ignoretab *doign,
	char *prefix)
{
	long count;
	FILE *ibuf;
	char *cp, *cp2, line[LINESIZE];
	int ishead, infld, ignoring, dostat, firstline;
	int c = 0, length, prefixlen;

	/*
	 * Compute the prefix string, without trailing whitespace
	 */
	if (prefix != NULL) {
		cp2 = 0;
		for (cp = prefix; *cp != '\0'; cp++)
			if (*cp != ' ' && *cp != '\t')
				cp2 = cp;
		prefixlen = cp2 == NULL ? 0 : cp2 - prefix + 1;
	}
	ibuf = FUNC9(mp);
	count = mp->m_size;
	ishead = 1;
	dostat = doign == 0 || !FUNC6("status", doign);
	infld = 0;
	firstline = 1;
	/*
	 * Process headers first
	 */
	while (count > 0 && ishead) {
		if (FUNC1(line, sizeof(line), ibuf) == NULL)
			break;
		count -= length = FUNC12(line);
		if (firstline) {
			/*
			 * First line is the From line, so no headers
			 * there to worry about
			 */
			firstline = 0;
			ignoring = doign == ignoreall;
		} else if (line[0] == '\n') {
			/*
			 * If line is blank, we've reached end of
			 * headers, so force out status: field
			 * and note that we are no longer in header
			 * fields
			 */
			if (dostat) {
				FUNC10(mp, obuf, prefix);
				dostat = 0;
			}
			ishead = 0;
			ignoring = doign == ignoreall;
		} else if (infld && (line[0] == ' ' || line[0] == '\t')) {
			/*
			 * If this line is a continuation (via space or tab)
			 * of a previous header field, just echo it
			 * (unless the field should be ignored).
			 * In other words, nothing to do.
			 */
		} else {
			/*
			 * Pick up the header field if we have one.
			 */
			for (cp = line; (c = *cp++) != '\0' && c != ':' &&
			    !FUNC7((unsigned char)c);)
				;
			cp2 = --cp;
			while (FUNC7((unsigned char)*cp++))
				;
			if (cp[-1] != ':') {
				/*
				 * Not a header line, force out status:
				 * This happens in uucp style mail where
				 * there are no headers at all.
				 */
				if (dostat) {
					FUNC10(mp, obuf, prefix);
					dostat = 0;
				}
				if (doign != ignoreall)
					/* add blank line */
					(void)FUNC8('\n', obuf);
				ishead = 0;
				ignoring = 0;
			} else {
				/*
				 * If it is an ignored field and
				 * we care about such things, skip it.
				 */
				*cp2 = '\0';	/* temporarily null terminate */
				if (doign && FUNC6(line, doign))
					ignoring = 1;
				else if ((line[0] == 's' || line[0] == 'S') &&
					 FUNC11(line, "status") == 0) {
					/*
					 * If the field is "status," go compute
					 * and print the real Status: field
					 */
					if (dostat) {
						FUNC10(mp, obuf, prefix);
						dostat = 0;
					}
					ignoring = 1;
				} else {
					ignoring = 0;
					*cp2 = c;	/* restore */
				}
				infld = 1;
			}
		}
		if (!ignoring) {
			/*
			 * Strip trailing whitespace from prefix
			 * if line is blank.
			 */
			if (prefix != NULL) {
				if (length > 1)
					FUNC2(prefix, obuf);
				else
					(void)FUNC4(prefix, sizeof(*prefix),
					    prefixlen, obuf);
			}
			(void)FUNC4(line, sizeof(*line), length, obuf);
			if (FUNC0(obuf))
				return (-1);
		}
	}
	/*
	 * Copy out message body
	 */
	if (doign == ignoreall)
		count--;		/* skip final blank line */
	if (prefix != NULL)
		while (count > 0) {
			if (FUNC1(line, sizeof(line), ibuf) == NULL) {
				c = 0;
				break;
			}
			count -= c = FUNC12(line);
			/*
			 * Strip trailing whitespace from prefix
			 * if line is blank.
			 */
			if (c > 1)
				FUNC2(prefix, obuf);
			else
				(void)FUNC4(prefix, sizeof(*prefix),
				    prefixlen, obuf);
			(void)FUNC4(line, sizeof(*line), c, obuf);
			if (FUNC0(obuf))
				return (-1);
		}
	else
		while (count > 0) {
			c = count < LINESIZE ? count : LINESIZE;
			if ((c = FUNC3(line, sizeof(*line), c, ibuf)) <= 0)
				break;
			count -= c;
			if (FUNC4(line, sizeof(*line), c, obuf) != c)
				return (-1);
		}
	if (doign == ignoreall && c > 0 && line[c - 1] != '\n')
		/* no final blank line */
		if ((c = FUNC5(ibuf)) != EOF && FUNC8(c, obuf) == EOF)
			return (-1);
	return (0);
}