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
typedef  void* u_int ;
struct uart_class {int dummy; } ;
typedef  int phandle_t ;
typedef  void* pcell_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
typedef  int /*<<< orphan*/  br ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,char*,void**,int) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,char const*,int*) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int FUNC6 (int,void**) ; 
 scalar_t__ FUNC7 (int,void**) ; 
 scalar_t__ FUNC8 (int,void**) ; 
 void* FUNC9 (struct uart_class*) ; 
 void* FUNC10 (struct uart_class*) ; 

int
FUNC11(struct uart_class **classp, bus_space_tag_t *bst,
    bus_space_handle_t *bsh, int *baud, u_int *rclk, u_int *shiftp,
    u_int *iowidthp)
{
	const char *propnames[] = {"stdout-path", "linux,stdout-path", "stdout",
	    "stdin-path", "stdin", NULL};
	const char **name;
	struct uart_class *class;
	phandle_t node, chosen;
	pcell_t br, clk, shift, iowidth;
	char *cp;
	int err;

	/* Has the user forced a specific device node? */
	cp = FUNC3("hw.fdt.console");
	if (cp == NULL) {
		/*
		 * Retrieve /chosen/std{in,out}.
		 */
		node = -1;
		if ((chosen = FUNC1("/chosen")) != -1) {
			for (name = propnames; *name != NULL; name++) {
				if (FUNC4(chosen, *name,
				    &node) == 0)
					break;
			}
		}
		if (chosen == -1 || *name == NULL)
			node = FUNC1("serial0"); /* Last ditch */
	} else {
		node = FUNC1(cp);
	}

	if (node == -1)
		return (ENXIO);

	/*
	 * Check old style of UART definition first. Unfortunately, the common
	 * FDT processing is not possible if we have clock, power domains and
	 * pinmux stuff.
	 */
	class = (struct uart_class *)FUNC5(node, 0);
	if (class != NULL) {
		if ((err = FUNC6(node, &clk)) != 0)
			return (err);
	} else {
		/* Check class only linker set */
		class =
		    (struct uart_class *)FUNC5(node, 1);
		if (class == NULL)
			return (ENXIO);
		clk = 0;
	}

	/*
	 * Retrieve serial attributes.
	 */
	if (FUNC8(node, &shift) != 0)
		shift = FUNC10(class);

	if (FUNC7(node, &iowidth) != 0)
		iowidth = FUNC9(class);

	if (FUNC2(node, "current-speed", &br, sizeof(br)) <= 0)
		br = 0;

	err = FUNC0(node, 0, bst, bsh, NULL);
	if (err != 0)
		return (err);

	*classp = class;
	*baud = br;
	*rclk = clk;
	*shiftp = shift;
	*iowidthp = iowidth;

	return (0);
}