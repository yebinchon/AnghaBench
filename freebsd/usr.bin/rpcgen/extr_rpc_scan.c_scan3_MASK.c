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
struct TYPE_4__ {scalar_t__ kind; } ;
typedef  TYPE_1__ token ;
typedef  scalar_t__ tok_kind ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(tok_kind expect1, tok_kind expect2, tok_kind expect3, token *tokp)
{
	FUNC1(tokp);
	if (tokp->kind != expect1 && tokp->kind != expect2
	    && tokp->kind != expect3) {
		FUNC0(expect1, expect2, expect3);
	}
}