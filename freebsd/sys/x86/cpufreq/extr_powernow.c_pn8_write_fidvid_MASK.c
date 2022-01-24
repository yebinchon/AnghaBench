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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(u_int fid, u_int vid, uint64_t ctrl, uint64_t *status)
{
	int i = 100;

	do
		FUNC0(fid, vid, ctrl);
	while (FUNC1(status) && --i);

	return (i == 0 ? ENXIO : 0);
}