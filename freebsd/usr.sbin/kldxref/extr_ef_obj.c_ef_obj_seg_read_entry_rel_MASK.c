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
typedef  int /*<<< orphan*/  Elf_Off ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,void*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 

__attribute__((used)) static int
FUNC3(elf_file_t ef, Elf_Off offset, size_t len,
    void **ptr)
{
	int error;

	*ptr = FUNC2(len);
	if (*ptr == NULL)
		return (errno);
	error = FUNC0(ef, offset, len, *ptr);
	if (error != 0)
		FUNC1(*ptr);
	return (error);
}