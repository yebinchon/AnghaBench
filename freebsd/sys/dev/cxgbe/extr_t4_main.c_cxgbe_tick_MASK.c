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
struct port_info {int /*<<< orphan*/  tick; struct adapter* adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct port_info*) ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct port_info *pi = arg;
	struct adapter *sc = pi->adapter;

	FUNC0(pi);
	FUNC2(sc, pi);

	FUNC1(&pi->tick, hz);
}