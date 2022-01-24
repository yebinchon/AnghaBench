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
typedef  int uint32_t ;
struct TYPE_2__ {int port_caps32; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPLFW4MSG_ENCAP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_CAPS32 ; 
 scalar_t__ FUNC1 (struct adapter*,int,int*,int*) ; 

__attribute__((used)) static int
FUNC2(struct adapter *sc)
{
	uint32_t param, val;

	/* ask for encapsulated CPLs */
	param = FUNC0(CPLFW4MSG_ENCAP);
	val = 1;
	(void)FUNC1(sc, 1, &param, &val);

	/* Enable 32b port caps if the firmware supports it. */
	param = FUNC0(PORT_CAPS32);
	val = 1;
	if (FUNC1(sc, 1, &param, &val) == 0)
		sc->params.port_caps32 = 1;

	return (0);
}