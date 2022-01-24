#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct value {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  obase; } ;

/* Variables and functions */
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct value* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct value*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct value *value = FUNC1();

	if (value != NULL) {
		FUNC2(stdout, value, "", bmachine.obase);
		FUNC0(stdout);
		FUNC3(value);
	}
}