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
struct port_info {long port_id; } ;
struct adapter {TYPE_1__* names; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {char* ifnet_name; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,char const*,int*,char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int,char*,long*) ; 

__attribute__((used)) static int
FUNC3(struct adapter *sc, struct port_info *pi)
{
	const char *parent, *name;
	long value;
	int line, unit;

	line = 0;
	parent = FUNC0(sc->dev);
	name = sc->names->ifnet_name;
	while (FUNC1(&line, name, &unit, "at", parent) == 0) {
		if (FUNC2(name, unit, "port", &value) == 0 &&
		    value == pi->port_id)
			return (unit);
	}
	return (-1);
}