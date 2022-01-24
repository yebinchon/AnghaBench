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
typedef  int u_int32_t ;
struct bfe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*,int,int) ; 

__attribute__((used)) static int
FUNC2(struct bfe_softc *sc)
{
	u_int32_t val;

	/* Enable activity LED */
	FUNC0(sc, 26, &val);
	FUNC1(sc, 26, val & 0x7fff);
	FUNC0(sc, 26, &val);

	/* Enable traffic meter LED mode */
	FUNC0(sc, 27, &val);
	FUNC1(sc, 27, val | (1 << 6));

	return (0);
}