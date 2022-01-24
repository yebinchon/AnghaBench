#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* linker_file_t ;
typedef  TYPE_2__* elf_file_t ;
struct TYPE_8__ {char* l_name; int /*<<< orphan*/  l_ld; int /*<<< orphan*/  l_addr; } ;
struct TYPE_7__ {TYPE_4__ gdb; int /*<<< orphan*/  dynamic; } ;
struct TYPE_6__ {int /*<<< orphan*/  ctors_size; int /*<<< orphan*/  ctors_addr; int /*<<< orphan*/  filename; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_LINKER ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  RT_ADD ; 
 int /*<<< orphan*/  RT_CONSISTENT ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(linker_file_t lf)
{
#ifdef GDB
	elf_file_t ef = (elf_file_t)lf;
	char *newfilename;
#endif
	int error;

	/* Notify MD code that a module is being loaded. */
	error = FUNC1(lf);
	if (error != 0)
		return (error);

#ifdef GDB
	GDB_STATE(RT_ADD);
	ef->gdb.l_addr = lf->address;
	newfilename = malloc(strlen(lf->filename) + 1, M_LINKER, M_WAITOK);
	strcpy(newfilename, lf->filename);
	ef->gdb.l_name = newfilename;
	ef->gdb.l_ld = ef->dynamic;
	link_elf_add_gdb(&ef->gdb);
	GDB_STATE(RT_CONSISTENT);
#endif

	/* Invoke .ctors */
	FUNC3(lf->ctors_addr, lf->ctors_size);
	return (0);
}