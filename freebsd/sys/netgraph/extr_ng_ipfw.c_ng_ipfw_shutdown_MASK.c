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
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ng_ipfw_input_p ; 

__attribute__((used)) static int
FUNC1(node_p node)
{

	/*
	 * After our single node has been removed,
	 * the only thing that can be done is
	 * 'kldunload ng_ipfw.ko'
	 */
	ng_ipfw_input_p = NULL;
	FUNC0(node);
	return (0);
}