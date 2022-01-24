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
struct amdpm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdpm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdpm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AMDSMB_GLOBAL_STATUS ; 
 int /*<<< orphan*/  AMDSMB_GS_CLEAR_STS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct amdpm_softc *sc)
{

	FUNC0(sc);
	FUNC1(sc, AMDSMB_GLOBAL_STATUS, AMDSMB_GS_CLEAR_STS);
	FUNC2(10);

	return (0);
}