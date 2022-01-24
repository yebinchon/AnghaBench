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
typedef  int uint8_t ;
struct cuda_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cuda_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cuda_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vBufB ; 
 int vPB4 ; 
 int vPB5 ; 

__attribute__((used)) static void
FUNC2(struct cuda_softc *sc)
{
	uint8_t reg;

	reg = FUNC0(sc, vBufB);
	reg |= (vPB4 | vPB5);
	FUNC1(sc, vBufB, reg);
}