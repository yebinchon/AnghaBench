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
typedef  int uint32_t ;
struct codec_softc {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODEC_RGADW ; 
 int /*<<< orphan*/  CODEC_RGDATA ; 
 int FUNC0 (struct codec_softc*,int /*<<< orphan*/ ) ; 
 int RGADW_RGADDR_S ; 
 int /*<<< orphan*/  FUNC1 (struct codec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct codec_softc *sc, uint32_t reg)
{
	uint32_t tmp;

	FUNC3(sc->clk);

	tmp = (reg << RGADW_RGADDR_S);
	FUNC1(sc, CODEC_RGADW, tmp);

	tmp = FUNC0(sc, CODEC_RGDATA);

	FUNC2(sc->clk);

	return (tmp);
}