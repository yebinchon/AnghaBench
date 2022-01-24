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
 int MASK ; 
 char* MINUSKVAR ; 
 int ROTORSZ ; 
 int* deck ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 () ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  stderr ; 
 int* t1 ; 
 int* t2 ; 
 int* t3 ; 

int
FUNC8(int argc, char *argv[])
{
	int i, n1, n2, nr1, nr2;
	int secureflg = 0, kflag = 0;
	char *cp;

	if (argc > 1 && argv[1][0] == '-') {
		if (argv[1][1] == 's') {
			argc--;
			argv++;
			secureflg = 1;
		} else if (argv[1][1] == 'k') {
			argc--;
			argv++;
			kflag = 1;
		}
	}
	if (kflag) {
		if ((cp = FUNC3(MINUSKVAR)) == NULL) {
			FUNC1(stderr, "%s not set\n", MINUSKVAR);
			FUNC0(1);
		}
		FUNC6(cp);
	} else if (argc != 2) {
		FUNC6(FUNC4("Enter key:"));
	}
	else
		FUNC6(argv[1]);
	n1 = 0;
	n2 = 0;
	nr2 = 0;

	while((i=FUNC2()) != -1) {
		if (secureflg) {
			nr1 = deck[n1]&MASK;
			nr2 = deck[nr1]&MASK;
		} else {
			nr1 = n1;
		}
		i = t2[(t3[(t1[(i+nr1)&MASK]+nr2)&MASK]-nr2)&MASK]-nr1;
		FUNC5(i);
		n1++;
		if(n1==ROTORSZ) {
			n1 = 0;
			n2++;
			if(n2==ROTORSZ) n2 = 0;
			if (secureflg) {
				FUNC7(deck);
			} else {
				nr2 = n2;
			}
		}
	}

	return 0;
}