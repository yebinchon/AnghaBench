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
struct ntb_child {int enabled; struct ntb_child* next; int /*<<< orphan*/  dev; } ;
typedef  enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef  enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct ntb_child* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ntb_child** FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(device_t ntb, enum ntb_speed speed, enum ntb_width width)
{
	struct ntb_child *nc = FUNC1(ntb);
	struct ntb_child **cpp = FUNC3(FUNC2(nc->dev));
	struct ntb_child *nc1;

	for (nc1 = *cpp; nc1 != NULL; nc1 = nc1->next) {
		if (nc1->enabled) {
			nc->enabled = 1;
			return (0);
		}
	}
	nc->enabled = 1;
	return (FUNC0(FUNC2(ntb), speed, width));
}