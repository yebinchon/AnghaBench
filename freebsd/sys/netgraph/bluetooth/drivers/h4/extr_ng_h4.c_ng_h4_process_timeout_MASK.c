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
typedef  int /*<<< orphan*/  node_p ;
typedef  TYPE_1__* ng_h4_info_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_2__ {int /*<<< orphan*/  tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(node_p node, hook_p hook, void *arg1, int arg2)
{
	ng_h4_info_p	sc = (ng_h4_info_p) FUNC0(node);

	FUNC1(&Giant);
	FUNC3(sc->tp);
	FUNC2(&Giant);
}