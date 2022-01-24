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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  ofw_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtp ; 

__attribute__((used)) static phandle_t
FUNC3(ofw_t ofw, phandle_t node)
{
	int offset;

	offset = FUNC2(node);
	if (offset < 0)
		return (0);
	offset = FUNC0(fdtp, offset);
	return (FUNC1(offset));
}