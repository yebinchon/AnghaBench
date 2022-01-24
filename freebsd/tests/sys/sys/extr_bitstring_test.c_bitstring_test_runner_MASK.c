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
typedef  int /*<<< orphan*/  testfunc_t ;

/* Variables and functions */
 int _BITSTR_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const) ; 
 unsigned long FUNC2 (int const*) ; 

__attribute__((used)) static void
FUNC3(testfunc_t *test)
{
	const int bitstr_sizes[] = {
		0,
		1,
		_BITSTR_BITS - 1,
		_BITSTR_BITS,
		_BITSTR_BITS + 1,
		2 * _BITSTR_BITS - 1,
		2 * _BITSTR_BITS,
		1023,
		1024
	};

	for (unsigned long i = 0; i < FUNC2(bitstr_sizes); i++) {
		FUNC1(test, bitstr_sizes[i]);
		FUNC0(test, bitstr_sizes[i]);
	}
}