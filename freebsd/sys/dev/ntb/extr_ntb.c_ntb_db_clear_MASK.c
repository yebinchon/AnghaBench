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
typedef  int uint64_t ;
struct ntb_child {int dboff; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 void FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct ntb_child* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(device_t ntb, uint64_t bits)
{
	struct ntb_child *nc = FUNC1(ntb);

	return (FUNC0(FUNC2(ntb), bits << nc->dboff));
}