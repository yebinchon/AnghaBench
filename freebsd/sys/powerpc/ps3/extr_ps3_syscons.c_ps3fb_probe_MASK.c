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
struct vt_device {int dummy; } ;
struct ps3fb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  compatible ;

/* Variables and functions */
 int CN_DEAD ; 
 int CN_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct ps3fb_softc ps3fb_softc ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct vt_device *vd)
{
	struct ps3fb_softc *sc;
	int disable;
	char compatible[64];
	phandle_t root;

	disable = 0;
	FUNC2("hw.syscons.disable", &disable);
	if (disable != 0)
		return (0);

	sc = &ps3fb_softc;

	FUNC3("hw.platform", compatible, sizeof(compatible));
	if (FUNC4(compatible, "ps3") == 0)
		return (CN_INTERNAL);

	root = FUNC0("/");
	if (FUNC1(root, "compatible", compatible, sizeof(compatible)) <= 0)
                return (CN_DEAD);
	
	if (FUNC5(compatible, "sony,ps3", sizeof(compatible)) != 0)
		return (CN_DEAD);

	return (CN_INTERNAL);
}