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

/* Variables and functions */
 int /*<<< orphan*/  MA_ALLOW_ANY ; 
 int /*<<< orphan*/  MA_ALLOW_PROMISOR ; 
 int /*<<< orphan*/  MA_ERROR ; 
 int /*<<< orphan*/  MA_PRINT ; 
 int /*<<< orphan*/  arg_missing_action ; 
 scalar_t__ fetch_if_missing ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static inline int FUNC1(const char *value)
{
	if (!FUNC0(value, "error")) {
		arg_missing_action = MA_ERROR;
		return 1;
	}

	if (!FUNC0(value, "allow-any")) {
		arg_missing_action = MA_ALLOW_ANY;
		fetch_if_missing = 0;
		return 1;
	}

	if (!FUNC0(value, "print")) {
		arg_missing_action = MA_PRINT;
		fetch_if_missing = 0;
		return 1;
	}

	if (!FUNC0(value, "allow-promisor")) {
		arg_missing_action = MA_ALLOW_PROMISOR;
		fetch_if_missing = 0;
		return 1;
	}

	return 0;
}