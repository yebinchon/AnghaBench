#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * cr_rights; } ;
typedef  TYPE_1__ const cap_rights_t ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__ const*) ; 
 unsigned int CAPARSIZE_MAX ; 
 unsigned int CAPARSIZE_MIN ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ CAP_RIGHTS_VERSION_00 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__ const*) ; 

cap_rights_t *
FUNC4(cap_rights_t *dst, const cap_rights_t *src)
{
	unsigned int i, n;

	FUNC2(FUNC1(dst) == CAP_RIGHTS_VERSION_00);
	FUNC2(FUNC1(src) == CAP_RIGHTS_VERSION_00);
	FUNC2(FUNC1(dst) == FUNC1(src));
	FUNC2(FUNC3(src));
	FUNC2(FUNC3(dst));

	n = FUNC0(dst);
	FUNC2(n >= CAPARSIZE_MIN && n <= CAPARSIZE_MAX);

	for (i = 0; i < n; i++)
		dst->cr_rights[i] |= src->cr_rights[i];

	FUNC2(FUNC3(src));
	FUNC2(FUNC3(dst));

	return (dst);
}