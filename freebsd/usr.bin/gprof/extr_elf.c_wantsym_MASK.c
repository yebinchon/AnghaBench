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
struct TYPE_3__ {int st_name; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ Elf_Sym ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int STB_LOCAL ; 
 int STT_FUNC ; 
 scalar_t__ aflag ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 scalar_t__ uflag ; 

__attribute__((used)) static bool
FUNC3(const Elf_Sym *sym, const char *strtab)
{
    int type;
    int bind;

    type = FUNC1(sym->st_info);
    bind = FUNC0(sym->st_info);

    if (type != STT_FUNC ||
      (aflag && bind == STB_LOCAL) ||
      (uflag && FUNC2(strtab + sym->st_name, '.') != NULL))
	return 0;

    return 1;
}