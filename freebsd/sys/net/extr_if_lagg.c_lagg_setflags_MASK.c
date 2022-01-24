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
struct lagg_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  func; scalar_t__ flag; } ;

/* Variables and functions */
 TYPE_1__* lagg_pflags ; 
 int FUNC0 (struct lagg_port*,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct lagg_port *lp, int status)
{
	int error, i;

	for (i = 0; lagg_pflags[i].flag; i++) {
		error = FUNC0(lp, lagg_pflags[i].flag,
		    status, lagg_pflags[i].func);
		if (error)
			return (error);
	}
	return (0);
}