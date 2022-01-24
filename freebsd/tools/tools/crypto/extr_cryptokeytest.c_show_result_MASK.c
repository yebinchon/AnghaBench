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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC2(const BIGNUM *a, const BIGNUM *b, const BIGNUM *c,
    const BIGNUM *sw, const BIGNUM *hw)
{
	FUNC1("\n");

	FUNC1("A = ");
	FUNC0(stdout, a);
	FUNC1("\n");

	FUNC1("B = ");
	FUNC0(stdout, b);
	FUNC1("\n");

	FUNC1("C = ");
	FUNC0(stdout, c);
	FUNC1("\n");

	FUNC1("sw= ");
	FUNC0(stdout, sw);
	FUNC1("\n");

	FUNC1("hw= ");
	FUNC0(stdout, hw);
	FUNC1("\n");

	FUNC1("\n");
}