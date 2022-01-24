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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  _DEF_DIRMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static mode_t
FUNC4(char *mode)
{
	mode_t m;
	void *set;

	if ((set = FUNC3(mode)) == NULL)
		FUNC0(EX_DATAERR, "invalid directory creation mode '%s'", mode);

	m = FUNC2(set, _DEF_DIRMODE);
	FUNC1(set);
	return (m);
}