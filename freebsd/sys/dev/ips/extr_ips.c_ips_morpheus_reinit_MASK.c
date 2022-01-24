#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ips_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int) ; 
 int IPS_POST1_OK ; 
 int MORPHEUS_BIT_POST1 ; 
 int MORPHEUS_BIT_POST2 ; 
 int /*<<< orphan*/  MORPHEUS_REG_IDR ; 
 int /*<<< orphan*/  MORPHEUS_REG_OIMR ; 
 int /*<<< orphan*/  MORPHEUS_REG_OISR ; 
 int /*<<< orphan*/  MORPHEUS_REG_OMR0 ; 
 int /*<<< orphan*/  MORPHEUS_REG_OMR1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC6(ips_softc_t *sc, int force)
{
        u_int32_t tmp;
	int i;

	tmp = FUNC4(sc, MORPHEUS_REG_OISR);
	if(!force && (FUNC4(sc, MORPHEUS_REG_OMR0) >= IPS_POST1_OK) &&
	    (FUNC4(sc, MORPHEUS_REG_OMR1) != 0xdeadbeef) && !tmp){
		FUNC5(sc, MORPHEUS_REG_OIMR, 0);
		return 0;
	}
	FUNC5(sc, MORPHEUS_REG_OIMR, 0xff);
	FUNC4(sc, MORPHEUS_REG_OIMR);

	FUNC2(sc->dev, "resetting adapter, this may take up to 5 minutes\n");
	FUNC5(sc, MORPHEUS_REG_IDR, 0x80000000);
	FUNC0(5000000);
	FUNC4(sc, MORPHEUS_REG_OIMR);

	tmp = FUNC4(sc, MORPHEUS_REG_OISR);
	for(i = 0; i < 45 && !(tmp & MORPHEUS_BIT_POST1); i++){
		FUNC0(1000000);
		FUNC1(2, sc->dev, "post1: %d\n", i);
		tmp = FUNC4(sc, MORPHEUS_REG_OISR);
	}
	if(tmp & MORPHEUS_BIT_POST1)
		FUNC5(sc, MORPHEUS_REG_OISR, MORPHEUS_BIT_POST1);

        if( i == 45 || FUNC4(sc, MORPHEUS_REG_OMR0) < IPS_POST1_OK){
                FUNC2(sc->dev,"Adapter error during initialization.\n");
		return 1;
        }
	for(i = 0; i < 240 && !(tmp & MORPHEUS_BIT_POST2); i++){
		FUNC0(1000000);	
		FUNC1(2, sc->dev, "post2: %d\n", i);
		tmp = FUNC4(sc, MORPHEUS_REG_OISR);
	}
	if(tmp & MORPHEUS_BIT_POST2)
		FUNC5(sc, MORPHEUS_REG_OISR, MORPHEUS_BIT_POST2);

	if(i == 240 || !FUNC4(sc, MORPHEUS_REG_OMR1)){
		FUNC2(sc->dev, "adapter failed config check\n");
		return 1;
        }
	FUNC5(sc, MORPHEUS_REG_OIMR, 0);
	if(force && FUNC3(sc)){
		FUNC2(sc->dev, "adapter clear failed\n");
		return 1;
	}
	return 0;
}