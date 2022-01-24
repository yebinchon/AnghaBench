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
struct rt_softc {unsigned int rt_chipid; } ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 unsigned int RT_CHIPID_MT7620 ; 
 unsigned int RT_CHIPID_MT7621 ; 
 unsigned int RT_CHIPID_RT3050 ; 
 unsigned int RT_CHIPID_RT5350 ; 
 struct rt_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ofw_compat_data* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt_compat_data ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct rt_softc *sc = FUNC0(dev);
	char buf[80];
#ifdef FDT
	const struct ofw_compat_data * cd;

	cd = ofw_bus_search_compatible(dev, rt_compat_data);
	if (cd->ocd_data == 0)
	        return (ENXIO);
	        
	sc->rt_chipid = (unsigned int)(cd->ocd_data);
#else
#if defined(MT7620)
	sc->rt_chipid = RT_CHIPID_MT7620;
#elif defined(MT7621)
	sc->rt_chipid = RT_CHIPID_MT7621;
#elif defined(RT5350)
	sc->rt_chipid = RT_CHIPID_RT5350;
#else
	sc->rt_chipid = RT_CHIPID_RT3050;
#endif
#endif
	FUNC3(buf, sizeof(buf), "Ralink %cT%x onChip Ethernet driver",
		sc->rt_chipid >= 0x7600 ? 'M' : 'R', sc->rt_chipid);
	FUNC1(dev, buf);
	return (BUS_PROBE_GENERIC);
}