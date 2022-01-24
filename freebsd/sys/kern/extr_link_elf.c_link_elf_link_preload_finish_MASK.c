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
typedef  scalar_t__ linker_file_t ;
typedef  scalar_t__ elf_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  VM_PROT_NONE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(linker_file_t lf)
{
	elf_file_t ef;
	int error;

	ef = (elf_file_t) lf;
	error = FUNC3(ef);
	if (error == 0)
		error = FUNC2(ef, VM_PROT_NONE);
	if (error != 0)
		return (error);
	(void)FUNC1(ef);

	return (FUNC0(lf));
}