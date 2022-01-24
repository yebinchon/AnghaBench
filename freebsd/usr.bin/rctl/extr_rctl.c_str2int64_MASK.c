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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC2(const char *str, int64_t *value)
{
	char *end;

	if (str == NULL)
		return (EINVAL);

	*value = FUNC1(str, &end, 10);
	if ((size_t)(end - str) != FUNC0(str))
		return (EINVAL);

	return (0);
}