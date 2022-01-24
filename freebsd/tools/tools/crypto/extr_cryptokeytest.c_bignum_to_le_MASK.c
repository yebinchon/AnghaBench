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
 int FUNC0 (int /*<<< orphan*/  const*,void*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *
FUNC5(const BIGNUM *n)
{
	int blen, error;
	void *rd;

	blen = FUNC1(n);
	if (blen == 0)
		return (NULL);

	rd = FUNC4(blen);
	if (rd == NULL)
		return (NULL);

	error = FUNC0(n, rd, blen);
	if (error < 0) {
		FUNC2(stderr);
		FUNC3(rd);
		return (NULL);
	}

	return (rd);
}