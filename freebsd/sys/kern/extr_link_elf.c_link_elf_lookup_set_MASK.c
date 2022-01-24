#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ value; } ;
typedef  TYPE_1__ linker_symval_t ;
typedef  int /*<<< orphan*/  linker_file_t ;
typedef  int /*<<< orphan*/  c_linker_sym_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  M_LINKER ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(linker_file_t lf, const char *name,
    void ***startp, void ***stopp, int *countp)
{
	c_linker_sym_t sym;
	linker_symval_t symval;
	char *setsym;
	void **start, **stop;
	int len, error = 0, count;

	len = FUNC5(name) + sizeof("__start_set_"); /* sizeof includes \0 */
	setsym = FUNC3(len, M_LINKER, M_WAITOK);

	/* get address of first entry */
	FUNC4(setsym, len, "%s%s", "__start_set_", name);
	error = FUNC1(lf, setsym, &sym);
	if (error != 0)
		goto out;
	FUNC2(lf, sym, &symval);
	if (symval.value == 0) {
		error = ESRCH;
		goto out;
	}
	start = (void **)symval.value;

	/* get address of last entry */
	FUNC4(setsym, len, "%s%s", "__stop_set_", name);
	error = FUNC1(lf, setsym, &sym);
	if (error != 0)
		goto out;
	FUNC2(lf, sym, &symval);
	if (symval.value == 0) {
		error = ESRCH;
		goto out;
	}
	stop = (void **)symval.value;

	/* and the number of entries */
	count = stop - start;

	/* and copy out */
	if (startp != NULL)
		*startp = start;
	if (stopp != NULL)
		*stopp = stop;
	if (countp != NULL)
		*countp = count;

out:
	FUNC0(setsym, M_LINKER);
	return (error);
}