#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* linker_file_t ;
typedef  scalar_t__ elf_file_t ;
struct TYPE_5__ {int /*<<< orphan*/  ctors_size; int /*<<< orphan*/  ctors_addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(linker_file_t lf)
{
	elf_file_t ef;
	int error;

	ef = (elf_file_t)lf;
	error = FUNC4(ef);
	if (error)
		return (error);

	/* Notify MD code that a module is being loaded. */
	error = FUNC0(lf);
	if (error)
		return (error);

#if defined(__i386__) || defined(__amd64__)
	/* Now ifuncs. */
	error = FUNC3(lf, true);
	if (error != 0)
		return (error);
#endif

	/* Apply protections now that relocation processing is complete. */
	FUNC2(ef);

	FUNC1(lf->ctors_addr, lf->ctors_size);
	return (0);
}