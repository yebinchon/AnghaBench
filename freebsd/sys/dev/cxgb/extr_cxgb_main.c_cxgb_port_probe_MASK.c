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
struct TYPE_2__ {char* desc; } ;
struct port_info {int port_id; TYPE_1__ phy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct port_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,char const*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct port_info *p;
	char buf[80];
	const char *desc;
	
	p = FUNC0(dev);
	desc = p->phy.desc;
	FUNC2(buf, sizeof(buf), "Port %d %s", p->port_id, desc);
	FUNC1(dev, buf);
	return (0);
}