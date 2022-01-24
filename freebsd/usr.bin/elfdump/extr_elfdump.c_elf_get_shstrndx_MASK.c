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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  Elf32_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  E_SHSTRNDX ; 
 scalar_t__ SHN_XINDEX ; 
 int /*<<< orphan*/  SH_LINK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC2(Elf32_Ehdr *e, void *sh)
{
	uint64_t shstrndx;

	shstrndx = FUNC0(e, e, E_SHSTRNDX);
	if (shstrndx == SHN_XINDEX)
		shstrndx = FUNC1(e, (char *)sh, SH_LINK);
	return shstrndx;
}