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
typedef  int /*<<< orphan*/  temp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

int FUNC6(FILE *fd, char *buffer, int len)
{
	int n, pos = 0, tpos;
	char *bp, *p;
	char tbuffer[3];
	char temp[128];

#define	DEC(c)	(((c) - ' ') & 0x3f)

	do {
		if (!FUNC2(temp, sizeof(temp), fd))
			return(0);
	} while (FUNC5(temp, "begin ", 6));
	FUNC3(temp, "begin %o %s", (unsigned *)&n, temp);
	bp = buffer;
	for (;;) {
		if (!FUNC2(p = temp, sizeof(temp), fd))
			return(0);
		if ((n = DEC(*p)) <= 0)
			break;
		for (++p; n > 0; p += 4, n -= 3) {
			tpos = 0;
			if (n >= 3) {
				tbuffer[tpos++] = DEC(p[0])<<2 | DEC(p[1])>>4;
				tbuffer[tpos++] = DEC(p[1])<<4 | DEC(p[2])>>2;
				tbuffer[tpos++] = DEC(p[2])<<6 | DEC(p[3]);
			}
			else {
				if (n >= 1) {
					tbuffer[tpos++] =
						DEC(p[0])<<2 | DEC(p[1])>>4;
				}
				if (n >= 2) {
					tbuffer[tpos++] =
						DEC(p[1])<<4 | DEC(p[2])>>2;
				}
				if (n >= 3) {
					tbuffer[tpos++] =
						DEC(p[2])<<6 | DEC(p[3]);
				}
			}
			if (tpos == 0)
				continue;
			if (tpos + pos > len) {
				tpos = len - pos;
				/*
				 * Arrange return value > len to indicate
				 * overflow.
				 */
				pos++;
			}
			FUNC1(tbuffer, bp, tpos);
			pos += tpos;
			bp += tpos;
			if (pos > len)
				return(pos);
		}
	}
	if (!FUNC2(temp, sizeof(temp), fd) || FUNC4(temp, "end\n"))
		return(0);
	return(pos);
}