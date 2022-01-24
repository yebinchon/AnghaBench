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
struct dfs_softc {scalar_t__ dfs4; } ;
struct cf_setting {int freq; int /*<<< orphan*/  dev; } ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_VAL_UNKNOWN ; 
 int EINVAL ; 
 int HID1_DFS2 ; 
 int HID1_DFS4 ; 
 int /*<<< orphan*/  SPR_HID1 ; 
 struct dfs_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_setting*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct cf_setting *set)
{
	struct dfs_softc *sc;
	register_t hid1;

	if (set == NULL)
		return (EINVAL);
	sc = FUNC0(dev);

	FUNC1(set, CPUFREQ_VAL_UNKNOWN, sizeof(*set));

	hid1 = FUNC2(SPR_HID1);

	set->freq = 10000;
	if (hid1 & HID1_DFS2)
		set->freq = 5000;
	else if (sc->dfs4 && (hid1 & HID1_DFS4))
		set->freq = 2500;

	set->dev = dev;

	return (0);
}