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
struct mtop {int mt_op; scalar_t__ mt_count; } ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTIOCTOP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(int fd, int type)
{
	struct mtop op;

	op.mt_op = type;
	op.mt_count = (daddr_t)1;
	if (FUNC1(fd, MTIOCTOP, (char *)&op) < 0)
		FUNC0(6, "tape op");
}