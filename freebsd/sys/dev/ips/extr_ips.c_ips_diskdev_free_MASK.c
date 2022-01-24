#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; scalar_t__* diskdev; } ;
typedef  TYPE_1__ ips_softc_t ;

/* Variables and functions */
 int IPS_MAX_NUM_DRIVES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(ips_softc_t *sc)
{
	int i;
	int error = 0;
	for(i = 0; i < IPS_MAX_NUM_DRIVES; i++){
		if(sc->diskdev[i]) {
			error = FUNC1(sc->dev, sc->diskdev[i]);
			if(error)
				return error;
		}
	}
	FUNC0(sc->dev);
	return 0;
}