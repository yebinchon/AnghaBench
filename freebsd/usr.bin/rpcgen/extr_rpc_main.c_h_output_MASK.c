#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  pointerp; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ xdrfunc ;
struct TYPE_6__ {int /*<<< orphan*/  val; struct TYPE_6__* next; } ;
typedef  TYPE_2__ list ;
typedef  int /*<<< orphan*/  definition ;

/* Variables and functions */
 scalar_t__ CCflag ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* defined ; 
 char const* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ mtflag ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpcgen_table_dcl ; 
 scalar_t__ tblflag ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 TYPE_1__* xdrfunc_head ; 

__attribute__((used)) static void
FUNC13(const char *infile, const char *define, int extend, const char *outfile, int headeronly)
{
	definition *def;
	const char *outfilename;
	long tell;
	const char *guard;
	list *l;
	xdrfunc *xdrfuncp;
	void *tmp = NULL;

	FUNC7(infile, define);
	outfilename =  extend ? FUNC1(infile, outfile) : outfile;
	FUNC8(infile, outfilename);
	FUNC0();
	if (outfilename || infile){
		guard = tmp = FUNC5(outfilename ? outfilename: infile);
	} else
		guard = "STDIN_";

	FUNC2(fout, "#ifndef _%s\n#define	_%s\n\n", guard,
		guard);

	FUNC2(fout, "#include <rpc/rpc.h>\n");

	if (mtflag)
		FUNC2(fout, "#include <pthread.h>\n");

	/* put the C++ support */
	if (!CCflag) {
		FUNC2(fout, "\n#ifdef __cplusplus\n");
		FUNC2(fout, "extern \"C\" {\n");
		FUNC2(fout, "#endif\n\n");
	}

	/* put in a typedef for quadprecision. Only with Cflag */

	tell = FUNC4(fout);

	/* print data definitions */
	while ( (def = FUNC6()) ) {
		FUNC9(def, headeronly);
	}

	/*
	 * print function declarations.
	 *  Do this after data definitions because they might be used as
	 *  arguments for functions
	 */
	for (l = defined; l != NULL; l = l->next) {
		FUNC10(l->val, headeronly);
	}
	/* Now  print all xdr func declarations */
	if (xdrfunc_head != NULL){

		FUNC2(fout,
			"\n/* the xdr functions */\n");

		if (CCflag){
			FUNC2(fout, "\n#ifdef __cplusplus\n");
			FUNC2(fout, "extern \"C\" {\n");
			FUNC2(fout, "#endif\n");
		}

		xdrfuncp = xdrfunc_head;
		while (xdrfuncp != NULL){
			FUNC11(xdrfuncp->name, xdrfuncp->pointerp);
			xdrfuncp = xdrfuncp->next;
		}
	}

	if (extend && tell == FUNC4(fout)) {
		(void) FUNC12(outfilename);
	} else if (tblflag) {
		FUNC2(fout, rpcgen_table_dcl);
	}

	FUNC2(fout, "\n#ifdef __cplusplus\n");
	FUNC2(fout, "}\n");
	FUNC2(fout, "#endif\n");

	FUNC2(fout, "\n#endif /* !_%s */\n", guard);
	FUNC3(tmp);
}