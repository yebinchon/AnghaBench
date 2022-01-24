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
typedef  scalar_t__ u_int16_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ subvendor; scalar_t__ subdevice; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ PCID_ENVY24HT ; 
 scalar_t__ PCIV_ENVY24 ; 
 TYPE_1__* cfg_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	u_int16_t sv, sd;
	int i;

#if(0)
	printf("envy24ht_pci_probe()\n");
#endif
	if (FUNC1(dev) == PCID_ENVY24HT &&
	    FUNC4(dev) == PCIV_ENVY24) {
		sv = FUNC3(dev);
		sd = FUNC2(dev);
		for (i = 0; cfg_table[i].subvendor != 0 || cfg_table[i].subdevice != 0; i++) {
			if (cfg_table[i].subvendor == sv &&
			    cfg_table[i].subdevice == sd) {
				break;
			}
		}
		FUNC0(dev, cfg_table[i].name);
#if(0)
		printf("envy24ht_pci_probe(): return 0\n");
#endif
		return 0;
	}
	else {
#if(0)
		printf("envy24ht_pci_probe(): return ENXIO\n");
#endif
		return ENXIO;
	}
}