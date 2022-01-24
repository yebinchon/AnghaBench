#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ d_sdt; } ;
struct TYPE_6__ {TYPE_1__ d_un; scalar_t__ d_debug; } ;
struct TYPE_5__ {unsigned long sdt_rel; unsigned long sdt_hash; unsigned long sdt_nzlist; unsigned long sdt_strings; unsigned long sdt_got; unsigned long sdt_plt; unsigned long sdt_plt_sz; } ;

/* Variables and functions */
 int EX_DYNAMIC ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* dyn ; 
 int /*<<< orphan*/ * ex ; 
 unsigned long origin ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 TYPE_2__* sdt ; 

__attribute__((used)) static void
FUNC4(void)
{
    FUNC3("  Text segment starts at address %lx\n", origin + FUNC2(*ex));
    if (FUNC1(*ex) & EX_DYNAMIC) {
	FUNC3("    rel starts at %lx\n", sdt->sdt_rel);
	FUNC3("    hash starts at %lx\n", sdt->sdt_hash);
	FUNC3("    nzlist starts at %lx\n", sdt->sdt_nzlist);
	FUNC3("    strings starts at %lx\n", sdt->sdt_strings);
    }

    FUNC3("  Data segment starts at address %lx\n", origin + FUNC0(*ex));
    if (FUNC1(*ex) & EX_DYNAMIC) {
	FUNC3("    _dynamic starts at %lx\n", origin + FUNC0(*ex));
	FUNC3("    so_debug starts at %lx\n", (unsigned long) dyn->d_debug);
	FUNC3("    sdt starts at %lx\n", (unsigned long) dyn->d_un.d_sdt);
	FUNC3("    got starts at %lx\n", sdt->sdt_got);
	FUNC3("    plt starts at %lx\n", sdt->sdt_plt);
	FUNC3("    rest of stuff starts at %lx\n",
	    sdt->sdt_plt + sdt->sdt_plt_sz);
    }
}