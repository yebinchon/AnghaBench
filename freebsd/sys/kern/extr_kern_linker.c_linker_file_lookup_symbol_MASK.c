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
typedef  int /*<<< orphan*/  linker_file_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  kld_sx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

caddr_t
FUNC4(linker_file_t file, const char *name, int deps)
{
	caddr_t sym;
	int locked;

	locked = FUNC2(&kld_sx);
	if (!locked)
		FUNC1(&kld_sx);
	sym = FUNC0(file, name, deps);
	if (!locked)
		FUNC3(&kld_sx);
	return (sym);
}