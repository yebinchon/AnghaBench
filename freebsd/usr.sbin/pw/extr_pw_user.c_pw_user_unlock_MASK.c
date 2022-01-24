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

/* Variables and functions */
 int /*<<< orphan*/  M_UNLOCK ; 
 int FUNC0 (int,char**,char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 

int
FUNC2(int argc, char **argv, char *arg1)
{
	int ch;

	while ((ch = FUNC0(argc, argv, "Cq")) != -1) {
		switch (ch) {
		case 'C':
		case 'q':
			/* compatibility */
			break;
		}
	}

	return (FUNC1(arg1, M_UNLOCK));
}