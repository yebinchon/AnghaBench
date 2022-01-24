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
struct atiixp_info {scalar_t__ codec_not_ready_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATI_REG_CMD ; 
 int ATI_REG_CMD_IN_DMA_EN ; 
 int ATI_REG_CMD_OUT_DMA_EN ; 
 int ATI_REG_CMD_SPDF_OUT_EN ; 
 int /*<<< orphan*/  ATI_REG_IER ; 
 int CODEC_CHECK_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_info*) ; 
 int FUNC2 (struct atiixp_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct atiixp_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct atiixp_info *sc)
{
	uint32_t value;

	FUNC1(sc);

	/* disable interrupts */
	FUNC0(sc);

	/* clear all DMA enables (preserving rest of settings) */
	value = FUNC2(sc, ATI_REG_CMD);
	value &= ~(ATI_REG_CMD_IN_DMA_EN | ATI_REG_CMD_OUT_DMA_EN |
	    ATI_REG_CMD_SPDF_OUT_EN );
	FUNC5(sc, ATI_REG_CMD, value);

	/* reset aclink */
	FUNC3(sc);

	sc->codec_not_ready_bits = 0;

	/* enable all codecs to interrupt as well as the new frame interrupt */
	FUNC5(sc, ATI_REG_IER, CODEC_CHECK_BITS);

	FUNC4(sc);
}