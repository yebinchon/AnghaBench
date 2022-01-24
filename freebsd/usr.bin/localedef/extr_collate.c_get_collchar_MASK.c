#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* wchar_t ;
struct TYPE_7__ {void* wc; int /*<<< orphan*/ * ref; } ;
typedef  TYPE_1__ collchar_t ;

/* Variables and functions */
 int NUM_WT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  collchars ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static collchar_t *
FUNC5(wchar_t wc, int create)
{
	collchar_t	srch;
	collchar_t	*cc;
	int		i;

	srch.wc = wc;
	cc = FUNC0(collchars, &collchars, &srch);
	if ((cc == NULL) && create) {
		if ((cc = FUNC2(1, sizeof(*cc))) == NULL) {
			FUNC3(stderr, "out of memory");
			return (NULL);
		}
		for (i = 0; i < NUM_WT; i++) {
			cc->ref[i] = FUNC4();
		}
		cc->wc = wc;
		FUNC1(collchars, &collchars, cc);
	}
	return (cc);
}