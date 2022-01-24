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
struct sc_info {int /*<<< orphan*/  dev; } ;
struct cfg_info {int free; int subvendor; int subdevice; int scfg; int acl; int i2s; int spdif; int gpiomask; int gpiostate; int gpiodir; int /*<<< orphan*/  codec; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int subvendor; int subdevice; int /*<<< orphan*/  codec; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENVY24_E2PROM_ACL ; 
 int ENVY24_E2PROM_GPIODIR ; 
 int ENVY24_E2PROM_GPIOMASK ; 
 int ENVY24_E2PROM_GPIOSTATE ; 
 int ENVY24_E2PROM_I2S ; 
 int ENVY24_E2PROM_SCFG ; 
 int ENVY24_E2PROM_SIZE ; 
 int ENVY24_E2PROM_SPDIF ; 
 int ENVY24_E2PROM_SUBDEVICE ; 
 int ENVY24_E2PROM_SUBVENDOR ; 
 int /*<<< orphan*/  M_ENVY24 ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 TYPE_1__* cfg_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct sc_info*,int) ; 
 struct cfg_info* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cfg_info *
FUNC3(struct sc_info *sc)
{
	struct cfg_info *buff;
	int size;
	int i;

#if(0)
	device_printf(sc->dev, "envy24_rom2cfg(sc)\n");
#endif
	size = FUNC1(sc, ENVY24_E2PROM_SIZE);
	if (size < ENVY24_E2PROM_GPIODIR + 1) {
#if(0)
		device_printf(sc->dev, "envy24_rom2cfg(): ENVY24_E2PROM_SIZE-->%d\n", size);
#endif
		return NULL;
	}
	buff = FUNC2(sizeof(*buff), M_ENVY24, M_NOWAIT);
	if (buff == NULL) {
#if(0)
		device_printf(sc->dev, "envy24_rom2cfg(): malloc()\n");
#endif
		return NULL;
	}
	buff->free = 1;

	buff->subvendor = FUNC1(sc, ENVY24_E2PROM_SUBVENDOR) << 8;
	buff->subvendor += FUNC1(sc, ENVY24_E2PROM_SUBVENDOR + 1);
	buff->subdevice = FUNC1(sc, ENVY24_E2PROM_SUBDEVICE) << 8;
	buff->subdevice += FUNC1(sc, ENVY24_E2PROM_SUBDEVICE + 1);
	buff->scfg = FUNC1(sc, ENVY24_E2PROM_SCFG);
	buff->acl = FUNC1(sc, ENVY24_E2PROM_ACL);
	buff->i2s = FUNC1(sc, ENVY24_E2PROM_I2S);
	buff->spdif = FUNC1(sc, ENVY24_E2PROM_SPDIF);
	buff->gpiomask = FUNC1(sc, ENVY24_E2PROM_GPIOMASK);
	buff->gpiostate = FUNC1(sc, ENVY24_E2PROM_GPIOSTATE);
	buff->gpiodir = FUNC1(sc, ENVY24_E2PROM_GPIODIR);

	for (i = 0; cfg_table[i].subvendor != 0 || cfg_table[i].subdevice != 0; i++)
		if (cfg_table[i].subvendor == buff->subvendor &&
		    cfg_table[i].subdevice == buff->subdevice)
			break;
	buff->name = cfg_table[i].name;
	buff->codec = cfg_table[i].codec;

	return buff;
}