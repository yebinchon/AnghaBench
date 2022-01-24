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
struct g_kerneldump {int /*<<< orphan*/  di; int /*<<< orphan*/  length; scalar_t__ offset; } ;
struct g_consumer {int dummy; } ;
struct diocskerneldump_arg {scalar_t__ kda_index; } ;
struct cdev {int /*<<< orphan*/  si_flags; struct g_consumer* si_drv2; } ;
typedef  int /*<<< orphan*/  kd ;

/* Variables and functions */
 scalar_t__ KDA_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OFF_MAX ; 
 int /*<<< orphan*/  SI_DUMPDEV ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct diocskerneldump_arg*) ; 
 int FUNC3 (char*,struct g_consumer*,int*,struct g_kerneldump*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_kerneldump*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, struct diocskerneldump_arg *kda)
{
	struct g_kerneldump kd;
	struct g_consumer *cp;
	int error, len;

	FUNC0(dev != NULL && kda != NULL);
	FUNC0(kda->kda_index != KDA_REMOVE);

	cp = dev->si_drv2;
	len = sizeof(kd);
	FUNC4(&kd, 0, len);
	kd.offset = 0;
	kd.length = OFF_MAX;
	error = FUNC3("GEOM::kerneldump", cp, &len, &kd);
	if (error != 0)
		return (error);

	error = FUNC2(&kd.di, FUNC1(dev), kda);
	if (error == 0)
		dev->si_flags |= SI_DUMPDEV;

	return (error);
}