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
 int /*<<< orphan*/  add_one_reference ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  option_optional_reference ; 
 int /*<<< orphan*/  option_required_reference ; 

__attribute__((used)) static void FUNC1(void)
{
	int required = 1;
	FUNC0(&option_required_reference,
			     add_one_reference, &required);
	required = 0;
	FUNC0(&option_optional_reference,
			     add_one_reference, &required);
}