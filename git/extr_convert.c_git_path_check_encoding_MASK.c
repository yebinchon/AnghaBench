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
struct attr_check_item {char* value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  default_encoding ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static const char *FUNC7(struct attr_check_item *check)
{
	const char *value = check->value;

	if (FUNC2(value) || !FUNC6(value))
		return NULL;

	if (FUNC1(value) || FUNC0(value)) {
		FUNC4(FUNC3("true/false are no valid working-tree-encodings"));
	}

	/* Don't encode to the default encoding */
	if (FUNC5(value, default_encoding))
		return NULL;

	return value;
}