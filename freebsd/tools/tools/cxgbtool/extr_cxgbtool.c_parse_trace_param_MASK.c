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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (char const*,char) ; 

__attribute__((used)) static int
FUNC3(const char *s, uint32_t *val, uint32_t *mask)
{
	return FUNC2(s, '.') ? FUNC0(s, val, mask) :
				FUNC1(s, val, mask, 0xffffffffU);
}