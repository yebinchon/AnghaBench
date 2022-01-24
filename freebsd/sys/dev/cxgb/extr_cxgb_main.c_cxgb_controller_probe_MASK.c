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
struct adapter_info {int nports0; int nports1; char* desc; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 struct adapter_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	const struct adapter_info *ai;
	char *ports, buf[80];
	int nports;

	ai = FUNC0(dev);
	if (ai == NULL)
		return (ENXIO);

	nports = ai->nports0 + ai->nports1;
	if (nports == 1)
		ports = "port";
	else
		ports = "ports";

	FUNC2(buf, sizeof(buf), "%s, %d %s", ai->desc, nports, ports);
	FUNC1(dev, buf);
	return (BUS_PROBE_DEFAULT);
}