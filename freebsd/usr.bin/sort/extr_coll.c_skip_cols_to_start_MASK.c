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
struct bwstring {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct bwstring const*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwstring const*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC3(const struct bwstring *s, size_t cols, size_t start,
    bool skip_blanks, bool *empty_key)
{
	if (cols < 1)
		return (FUNC0(s) + 1);

	if (skip_blanks)
		while (start < FUNC0(s) && FUNC2(FUNC1(s,start)))
			++start;

	while (start < FUNC0(s) && cols > 1) {
		--cols;
		++start;
	}

	if (start >= FUNC0(s))
		*empty_key = true;

	return (start);
}