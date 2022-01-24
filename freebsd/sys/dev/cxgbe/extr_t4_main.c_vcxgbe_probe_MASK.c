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
struct vi_info {TYPE_1__* pi; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int port_id; struct vi_info* vi; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 struct vi_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	char buf[128];
	struct vi_info *vi = FUNC0(dev);

	FUNC2(buf, sizeof(buf), "port %d vi %td", vi->pi->port_id,
	    vi - vi->pi->vi);
	FUNC1(dev, buf);

	return (BUS_PROBE_DEFAULT);
}