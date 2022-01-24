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
struct cmd {int c_opts; int /*<<< orphan*/  (* c_handler ) (int,char**) ;int /*<<< orphan*/ * c_generic; } ;
typedef  char* PRIV_END ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_LPR ; 
 int LPC_PRIVCMD ; 
 int /*<<< orphan*/  LPR_OPER ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  euid ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fromatty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (int,char**),int,char**) ; 
 struct cmd* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC12 (int,char**) ; 
 scalar_t__ uid ; 

int
FUNC13(int argc, char *argv[])
{
	register struct cmd *c;

	euid = FUNC5();
	uid = FUNC6();
	PRIV_END
	progname = argv[0];
	FUNC9("lpd", 0, LOG_LPR);

	if (--argc > 0) {
		c = FUNC4(*++argv);
		if (c == (struct cmd *)-1) {
			FUNC10("?Ambiguous command\n");
			FUNC1(1);
		}
		if (c == NULL) {
			FUNC10("?Invalid command\n");
			FUNC1(1);
		}
		if ((c->c_opts & LPC_PRIVCMD) && FUNC6() &&
		    FUNC7(LPR_OPER) == 0) {
			FUNC10("?Privileged command\n");
			FUNC1(1);
		}
		if (c->c_generic != NULL)
			FUNC3(c->c_generic, c->c_opts, c->c_handler,
			    argc, argv);
		else
			(*c->c_handler)(argc, argv);
		FUNC1(0);
	}
	fromatty = FUNC8(FUNC2(stdin));
	if (!fromatty)
		FUNC11(SIGINT, intr);
	for (;;) {
		FUNC0();
	}
}