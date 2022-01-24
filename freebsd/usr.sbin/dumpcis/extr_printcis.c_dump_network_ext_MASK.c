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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static void
FUNC4(u_char *p, int len)
{
	static const char *tech[] = {
		"Undefined", "ARCnet", "Ethernet", "Token ring",
		"Localtalk", "FDDI/CDDI", "ATM", "Wireless"
	};
	static const char *media[] = {
		"Undefined", "UTP", "STP", "Thin coax",
		"THICK coax", "Fiber", "900 MHz", "2.4 GHz",
		"5.4 GHz", "Diffuse Infrared", "Point to point Infrared"
	};
	u_int i = 0;

	if (len < 1)
		return;
	switch (p[0]) {
	case 1:			/* Network technology */
		if (len < 2)
			goto err;
		FUNC1("\tNetwork technology: %s\n", tech[p[1] & 7]);
		break;
	case 2:			/* Network speed */
		if (len < 5)
			goto err;
		FUNC1("\tNetwork speed: ");
		FUNC0(FUNC3(p + 1));
		FUNC2('\n');
		break;
	case 3:			/* Network media */
		if (len < 2)
			goto err;
		if (p[1] <= 10)
			i = p[1];
		FUNC1("\tNetwork media: %s\n", media[i]);
		break;
	case 4:			/* Node ID */
		if (len <= 2 || len < p[1] + 2)
			goto err;
		FUNC1("\tNetwork node ID:");
		for (i = 0; i < p[1]; i++)
			FUNC1(" %02x", p[i + 2]);
		FUNC2('\n');
		break;
	case 5:			/* Connector type */
		if (len < 2)
			goto err;
		FUNC1("\tNetwork connector: %s connector standard\n",
		       (p[1] == 0) ? "open" : "closed");
		break;
	err:	/* warning */
		FUNC1("\tWrong length for network extension tuple\n");
		return;
	}
}