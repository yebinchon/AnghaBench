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
struct TYPE_4__ {scalar_t__ n_len; int /*<<< orphan*/  n_bytes; } ;
typedef  TYPE_1__ netobj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int
FUNC2(const netobj *n0, const netobj *n1)
{
	int retval;

	retval = 0;

	FUNC1("Entering netobj identity check\n");

	if (n0->n_len == n1->n_len) {
		FUNC1("Preliminary length check passed\n");
		retval = !FUNC0(n0->n_bytes, n1->n_bytes, n0->n_len);
		FUNC1("netobj %smatch\n", retval ? "" : "mis");
	}

	return (retval);
}