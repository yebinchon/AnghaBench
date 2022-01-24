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
typedef  int u_int ;
struct kiic_softc {int dummy; } ;

/* Variables and functions */
 int I2C_PORT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MODE ; 
 int FUNC1 (struct kiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kiic_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct kiic_softc *sc, u_int port)
{
	u_int x;

	FUNC0(port == 1 || port == 0, ("bad port"));
	x = FUNC1(sc, MODE);
	x &= ~I2C_PORT;
	x |= (port << 4);
	FUNC2(sc, MODE, x);
}