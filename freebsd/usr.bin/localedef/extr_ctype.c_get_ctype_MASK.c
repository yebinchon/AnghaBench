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
struct TYPE_7__ {void* wc; } ;
typedef  TYPE_1__ ctype_node_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  ctypes ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static ctype_node_t *
FUNC4(wchar_t wc)
{
	ctype_node_t	srch;
	ctype_node_t	*ctn;

	srch.wc = wc;
	if ((ctn = FUNC0(ctypes, &ctypes, &srch)) == NULL) {
		if ((ctn = FUNC2(1, sizeof (*ctn))) == NULL) {
			FUNC3("out of memory");
			return (NULL);
		}
		ctn->wc = wc;

		FUNC1(ctypes, &ctypes, ctn);
	}
	return (ctn);
}