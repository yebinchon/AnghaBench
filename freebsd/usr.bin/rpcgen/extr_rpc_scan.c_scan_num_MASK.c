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
struct TYPE_4__ {int kind; } ;
typedef  TYPE_1__ token ;

/* Variables and functions */
#define  TOK_IDENT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(token *tokp)
{
	FUNC1(tokp);
	switch (tokp->kind) {
	case TOK_IDENT:
		break;
	default:
		FUNC0("constant or identifier expected");
	}
}