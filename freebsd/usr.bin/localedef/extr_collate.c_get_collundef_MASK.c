#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* name; int /*<<< orphan*/ * ref; } ;
typedef  TYPE_1__ collundef_t ;

/* Variables and functions */
 int NUM_WT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  collundefs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static collundef_t *
FUNC8(char *name)
{
	collundef_t	srch;
	collundef_t	*ud;
	int		i;

	srch.name = name;
	if ((ud = FUNC0(collundefs, &collundefs, &srch)) == NULL) {
		if (((ud = FUNC3(1, sizeof(*ud))) == NULL) ||
		    ((ud->name = FUNC7(name)) == NULL)) {
			FUNC4(stderr,"out of memory");
			FUNC5(ud);
			return (NULL);
		}
		for (i = 0; i < NUM_WT; i++) {
			ud->ref[i] = FUNC6();
		}
		FUNC1(collundefs, &collundefs, ud);
	}
	FUNC2(name);
	return (ud);
}