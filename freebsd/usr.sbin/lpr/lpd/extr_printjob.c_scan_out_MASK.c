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
struct printer {int page_width; } ;

/* Variables and functions */
 char BACKGND ; 
 int DROP ; 
 int HEIGHT ; 
 int /*<<< orphan*/  LINELEN ; 
 char FUNC0 (char) ; 
 int WIDTH ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/ ** scnkey ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct printer *pp, int scfd, char *scsp, int dlm)
{
	register char *strp;
	register int nchrs, j;
	char outbuf[LINELEN+1], *sp, c, cc;
	int d, scnhgt;

	for (scnhgt = 0; scnhgt++ < HEIGHT+DROP; ) {
		strp = &outbuf[0];
		sp = scsp;
		for (nchrs = 0; ; ) {
			d = FUNC1(c = FUNC0(cc = *sp++));
			if ((!d && scnhgt > HEIGHT) || (scnhgt <= DROP && d))
				for (j = WIDTH; --j;)
					*strp++ = BACKGND;
			else
				strp = FUNC2(scnkey[(int)c][scnhgt-1-d], strp, cc);
			if (*sp == dlm || *sp == '\0' || 
			    nchrs++ >= pp->page_width/(WIDTH+1)-1)
				break;
			*strp++ = BACKGND;
			*strp++ = BACKGND;
		}
		while (*--strp == BACKGND && strp >= outbuf)
			;
		strp++;
		*strp++ = '\n';
		(void) FUNC3(scfd, outbuf, strp-outbuf);
	}
}