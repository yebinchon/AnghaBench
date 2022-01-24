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
typedef  int u_long ;
typedef  int u_int ;

/* Variables and functions */
 int FUNC0 (char**,char*,int,int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC3(u_long num, int digits, u_int base)
{
	char *p;

	if (base <= 16) {
		p = FUNC1(2);
		p[0] = num >= 10 ? num + 'A' - 10 : num + '0';
		p[1] = '\0';
	} else {
		if (FUNC0(&p, "%0*d", digits, num) == -1)
			FUNC2(1, NULL);
	}
	return (p);
}