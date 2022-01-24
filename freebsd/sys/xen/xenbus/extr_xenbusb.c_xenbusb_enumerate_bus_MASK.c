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
typedef  size_t u_int ;
struct xenbusb_softc {int /*<<< orphan*/  xbs_dev; int /*<<< orphan*/  xbs_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_XENSTORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  XST_NIL ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t*,char const***) ; 

__attribute__((used)) static int
FUNC3(struct xenbusb_softc *xbs)
{
	const char **types;
	u_int type_idx;
	u_int type_count;
	int error;

	error = FUNC2(XST_NIL, xbs->xbs_node, "", &type_count, &types);
	if (error)
		return (error);

	for (type_idx = 0; type_idx < type_count; type_idx++)
		FUNC0(xbs->xbs_dev, types[type_idx]);

	FUNC1(types, M_XENSTORE);

	return (0);
}