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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  token_t ;
struct TYPE_3__ {int /*<<< orphan*/ * cr_rights; } ;
typedef  TYPE_1__ cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUT_RIGHTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

token_t *
FUNC4(cap_rights_t *rightsp)
{
	token_t *t;
	u_char *dptr;
	int i;

	FUNC2(t, dptr, sizeof(u_char) + sizeof(*rightsp));

	FUNC0(dptr, AUT_RIGHTS);
	for (i = 0; i < FUNC3(rightsp->cr_rights); i++)
		FUNC1(dptr, rightsp->cr_rights[i]);

	return (t);
}