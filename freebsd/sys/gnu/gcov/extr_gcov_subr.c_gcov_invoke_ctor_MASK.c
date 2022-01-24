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
typedef  void* linker_file_t ;
typedef  int /*<<< orphan*/  c_linker_sym_t ;

/* Variables and functions */
 int /*<<< orphan*/  GCOV_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (void*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(const char *name, void *arg)
{
	void (*ctor)(void);
	c_linker_sym_t sym;
	linker_symval_t symval;
	linker_file_t lf;

	if (FUNC2(name, GCOV_PREFIX) == NULL)
		return (0);
	lf = arg;
	FUNC0(lf, name, &sym);
	FUNC1(lf, sym, &symval);
	ctor = (void *)symval.value;
	ctor();
	return (0);
}