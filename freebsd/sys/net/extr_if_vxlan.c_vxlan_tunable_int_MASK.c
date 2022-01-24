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
struct vxlan_softc {int vxl_unit; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,char const*) ; 

__attribute__((used)) static int
FUNC2(struct vxlan_softc *sc, const char *knob, int def)
{
	char path[64];

	FUNC1(path, sizeof(path), "net.link.vxlan.%d.%s",
	    sc->vxl_unit, knob);
	FUNC0(path, &def);

	return (def);
}