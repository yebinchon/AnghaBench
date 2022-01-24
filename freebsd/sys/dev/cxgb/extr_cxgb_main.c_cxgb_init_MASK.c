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
struct port_info {struct adapter* adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct port_info*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct port_info *p = arg;
	struct adapter *sc = p->adapter;

	FUNC0(sc);
	FUNC2(p); /* releases adapter lock */
	FUNC1(sc);
}