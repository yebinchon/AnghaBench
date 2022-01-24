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
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_3__ {int p_flags; scalar_t__ p_filesz; scalar_t__ p_memsz; } ;
typedef  TYPE_1__ Elf_Phdr ;

/* Variables and functions */
 int PF_W ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(Elf_Phdr *phdr)
{

	if ((phdr->p_flags & PF_W) == 0) {
		FUNC0("text=0x%jx ", (uintmax_t)phdr->p_filesz);
	} else {
		FUNC0("data=0x%jx", (uintmax_t)phdr->p_filesz);
		if (phdr->p_filesz < phdr->p_memsz)
			FUNC0("+0x%jx",
			    (uintmax_t)(phdr->p_memsz - phdr->p_filesz));
		FUNC0(" ");
	}
}