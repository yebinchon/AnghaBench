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
typedef  int /*<<< orphan*/  elf_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  elf_lookup ; 
 int /*<<< orphan*/  elf_reloc ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(elf_file_t ef)
{
	int error;

	error = FUNC0(ef, elf_lookup, elf_reloc, false);
	if (error == 0)
		error = FUNC0(ef, elf_lookup, elf_reloc, true);
	return (error);
}