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
struct xenbusb_softc {int /*<<< orphan*/  xbs_node; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_XENSTORE ; 
 int /*<<< orphan*/  XST_NIL ; 
 struct xenbusb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,unsigned int*,char const***) ; 

__attribute__((used)) static int
FUNC4(device_t dev, const char *type)
{
	struct xenbusb_softc *xbs;
	const char **dir;
	unsigned int i, count;
	int error;

	xbs = FUNC0(dev);
	error = FUNC3(XST_NIL, xbs->xbs_node, type, &count, &dir);
	if (error)
		return (error);
	for (i = 0; i < count; i++)
		FUNC2(dev, type, dir[i]);

	FUNC1(dir, M_XENSTORE);

	return (0);
}