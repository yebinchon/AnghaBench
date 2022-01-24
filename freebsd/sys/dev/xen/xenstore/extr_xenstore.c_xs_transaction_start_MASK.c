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
struct xs_transaction {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_XENSTORE ; 
 int /*<<< orphan*/  XST_NIL ; 
 int /*<<< orphan*/  XS_TRANSACTION_START ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,void**) ; 

int
FUNC3(struct xs_transaction *t)
{
	char *id_str;
	int error;

	error = FUNC2(XST_NIL, XS_TRANSACTION_START, "", NULL,
	    (void **)&id_str);
	if (error == 0) {
		t->id = FUNC1(id_str, NULL, 0);
		FUNC0(id_str, M_XENSTORE);
	}
	return (error);
}