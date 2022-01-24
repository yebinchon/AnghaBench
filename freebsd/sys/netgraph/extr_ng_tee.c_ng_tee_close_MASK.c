#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* sc_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_6__ {scalar_t__ hook; } ;
struct TYPE_5__ {scalar_t__ hook; } ;
struct TYPE_7__ {TYPE_2__ right; TYPE_1__ left; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(node_p node)
{
	const sc_p privdata = FUNC0(node);

	if (privdata->left.hook && privdata->right.hook)
		FUNC1(privdata->left.hook, privdata->right.hook);

	return (0);
}