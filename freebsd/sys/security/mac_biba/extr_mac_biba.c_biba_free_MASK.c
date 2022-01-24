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
struct mac_biba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  destroyed_not_inited ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mac_biba*) ; 
 int /*<<< orphan*/  zone_biba ; 

__attribute__((used)) static void
FUNC2(struct mac_biba *mb)
{

	if (mb != NULL)
		FUNC1(zone_biba, mb);
	else
		FUNC0(&destroyed_not_inited, 1);
}