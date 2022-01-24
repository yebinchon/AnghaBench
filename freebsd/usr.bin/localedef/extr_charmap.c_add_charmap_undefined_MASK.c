#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
struct TYPE_4__ {char* name; scalar_t__ wc; } ;
typedef  TYPE_1__ charmap_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmap_sym ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ undefok ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void
FUNC4(char *sym)
{
	charmap_t srch;
	charmap_t *cm = NULL;

	srch.name = sym;
	cm = FUNC0(cmap_sym, &cmap_sym, &srch);

	if ((undefok == 0) && ((cm == NULL) || (cm->wc == (wchar_t)-1))) {
		FUNC3("undefined symbol <%s>", sym);
		FUNC1(sym, -1, 0);
	} else {
		FUNC2(sym);
	}
}