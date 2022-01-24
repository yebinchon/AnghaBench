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
typedef  int u_short ;
struct amdpm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdpm_softc*) ; 
 int FUNC2 (struct amdpm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AMDSMB_GLOBAL_STATUS ; 
 int AMDSMB_GS_HST_STS ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4(struct amdpm_softc *sc)
{
	u_short sts;

	FUNC1(sc);
	sts = FUNC2(sc, AMDSMB_GLOBAL_STATUS);

	FUNC0(FUNC3("amdpm: busy? STS=0x%x\n", sts));

	return (~(sts & AMDSMB_GS_HST_STS));
}