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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct rsu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92S_CAMCMD ; 
 int /*<<< orphan*/  R92S_CAMCMD_ADDR ; 
 int R92S_CAMCMD_POLLING ; 
 int R92S_CAMCMD_WRITE ; 
 int /*<<< orphan*/  R92S_CAMWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct rsu_softc *sc, uint8_t addr, uint32_t data)
{

	FUNC1(sc, R92S_CAMWRITE, data);
	FUNC1(sc, R92S_CAMCMD,
	    R92S_CAMCMD_POLLING | R92S_CAMCMD_WRITE |
	    FUNC0(R92S_CAMCMD_ADDR, addr));
}