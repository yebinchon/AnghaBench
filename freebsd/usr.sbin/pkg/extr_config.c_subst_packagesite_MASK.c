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
struct sbuf {int dummy; } ;
struct TYPE_2__ {char* value; char* val; } ;

/* Variables and functions */
 size_t PACKAGESITE ; 
 TYPE_1__* c ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 struct sbuf* FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char const*,char*) ; 

__attribute__((used)) static void
FUNC9(const char *abi)
{
	struct sbuf *newval;
	const char *variable_string;
	const char *oldval;

	if (c[PACKAGESITE].value != NULL)
		oldval = c[PACKAGESITE].value;
	else
		oldval = c[PACKAGESITE].val;

	if ((variable_string = FUNC8(oldval, "${ABI}")) == NULL)
		return;

	newval = FUNC5();
	FUNC1(newval, oldval, variable_string - oldval);
	FUNC2(newval, abi);
	FUNC2(newval, variable_string + FUNC7("${ABI}"));
	FUNC4(newval);

	FUNC0(c[PACKAGESITE].value);
	c[PACKAGESITE].value = FUNC6(FUNC3(newval));
}