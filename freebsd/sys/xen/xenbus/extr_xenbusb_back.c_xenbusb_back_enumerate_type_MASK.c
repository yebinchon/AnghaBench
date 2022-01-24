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
struct xenbusb_softc {int /*<<< orphan*/  xbs_node; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_XENSTORE ; 
 int /*<<< orphan*/  XST_NIL ; 
 struct xenbusb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ ) ; 
 char const* FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t*,char const***) ; 
 struct sbuf* FUNC6 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC7(device_t dev, const char *type)
{
	struct xenbusb_softc *xbs;
	const char **vms;
	u_int vm_idx;
	u_int vm_count;
	int error;

	xbs = FUNC0(dev);
	error = FUNC5(XST_NIL, xbs->xbs_node, type, &vm_count, &vms);
	if (error)
		return (error);
	for (vm_idx = 0; vm_idx < vm_count; vm_idx++) {
		struct sbuf *vm_path;
		const char *vm;
		const char **devs;
		u_int dev_idx;
		u_int dev_count;

		vm = vms[vm_idx];

		vm_path = FUNC6(type, vm);
		error = FUNC5(XST_NIL, xbs->xbs_node, FUNC2(vm_path),
		    &dev_count, &devs);
		FUNC3(vm_path);
		if (error)
			break;

		for (dev_idx = 0; dev_idx < dev_count; dev_idx++) {
			const char *dev_num;
			struct sbuf *id;
			
			dev_num = devs[dev_idx];
			id = FUNC6(vm, dev_num);
			FUNC4(dev, type, FUNC2(id));
			FUNC3(id);
		}
		FUNC1(devs, M_XENSTORE);
	}

	FUNC1(vms, M_XENSTORE);

	return (0);
}