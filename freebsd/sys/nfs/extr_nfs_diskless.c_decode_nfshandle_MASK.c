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
typedef  char u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*,char*,int*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(char *ev, u_char *fh, int maxfh) 
{
	u_char *cp, *ep;
	int len, val;

	ep = cp = FUNC1(ev);
	if (cp == NULL)
		return (0);
	if ((FUNC3(cp) < 2) || (*cp != 'X')) {
		FUNC0(ep);
		return (0);
	}
	len = 0;
	cp++;
	for (;;) {
		if (*cp == 'X') {
			FUNC0(ep);
			return (len);
		}
		if ((FUNC2(cp, "%2x", &val) != 1) || (val > 0xff)) {
			FUNC0(ep);
			return (0);
		}
		*(fh++) = val;
		len++;
		cp += 2;
		if (len > maxfh) {
		    FUNC0(ep);
		    return (0);
		}
	}
}