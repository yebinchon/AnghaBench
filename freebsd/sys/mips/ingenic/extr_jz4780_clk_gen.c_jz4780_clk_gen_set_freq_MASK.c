#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct jz4780_clk_gen_sc {TYPE_2__* clk_descr; } ;
struct clknode {int dummy; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {int div_lg; unsigned int div_bits; int div_shift; unsigned int div_ce_bit; unsigned int div_st_bit; unsigned int div_busy_bit; int /*<<< orphan*/  div_reg; } ;
struct TYPE_4__ {TYPE_1__ clk_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_clk_gen_sc*) ; 
 int FUNC1 (struct jz4780_clk_gen_sc*,int /*<<< orphan*/ ) ; 
 int CLK_SET_DRYRUN ; 
 int CLK_SET_ROUND_DOWN ; 
 int CLK_SET_ROUND_UP ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_clk_gen_sc*) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_clk_gen_sc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int DIV_TIMEOUT ; 
 int ERANGE ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 struct jz4780_clk_gen_sc* FUNC6 (struct clknode*) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int
FUNC8(struct clknode *clk, uint64_t fin,
    uint64_t *fout, int flags, int *stop)
{
	struct jz4780_clk_gen_sc *sc;
	uint64_t _fout;
	uint32_t divider, div_reg, div_msk, reg, div_l, div_h;
	int rv;

	sc = FUNC6(clk);

	/* Find closest divider */
	div_l = FUNC7(fin, *fout);
	div_h = fin / *fout;
	divider = FUNC5((int64_t)*fout - (fin / div_l)) <
	    FUNC5((int64_t)*fout - (fin / div_h)) ? div_l : div_h;

	/* Adjust for divider multiplier */
	div_reg = divider >> sc->clk_descr->clk_div.div_lg;
	divider = div_reg << sc->clk_descr->clk_div.div_lg;
	if (divider == 0)
		divider = 1;

	_fout = fin / divider;

	/* Rounding */
	if ((flags & CLK_SET_ROUND_UP) && (*fout > _fout))
		div_reg--;
	else if ((flags & CLK_SET_ROUND_DOWN) && (*fout < _fout))
		div_reg++;
	if (div_reg == 0)
		div_reg = 1;

	div_msk = (1u << sc->clk_descr->clk_div.div_bits) - 1;

	*stop = 1;
	if (div_reg > div_msk + 1) {
		*stop = 0;
		div_reg = div_msk;
	}

	divider = (div_reg << sc->clk_descr->clk_div.div_lg);
	div_reg--;

	if ((flags & CLK_SET_DRYRUN) != 0) {
		if (*stop != 0 && *fout != fin / divider &&
		    (flags & (CLK_SET_ROUND_UP | CLK_SET_ROUND_DOWN)) == 0)
			return (ERANGE);
		*fout = fin / divider;
		return (0);
	}

	FUNC0(sc);
	/* Apply the new divider value */
	reg = FUNC1(sc, sc->clk_descr->clk_div.div_reg);
	reg &= ~(div_msk << sc->clk_descr->clk_div.div_shift);
	reg |= (div_reg << sc->clk_descr->clk_div.div_shift);
	/* Set the change enable bit, it present */
	if (sc->clk_descr->clk_div.div_ce_bit >= 0)
		reg |= (1u << sc->clk_descr->clk_div.div_ce_bit);
	/* Clear stop bit, it present */
	if (sc->clk_descr->clk_div.div_st_bit >= 0)
		reg &= ~(1u << sc->clk_descr->clk_div.div_st_bit);
	/* Initiate the change */
	FUNC3(sc, sc->clk_descr->clk_div.div_reg, reg);

	/* Wait for busy bit to clear indicating the change is complete */
	rv = 0;
	if (sc->clk_descr->clk_div.div_busy_bit >= 0) {
		int i;

		for (i = 0;  i < DIV_TIMEOUT; i++) {
			reg = FUNC1(sc, sc->clk_descr->clk_div.div_reg);
			if (!(reg & (1u << sc->clk_descr->clk_div.div_busy_bit)))
				break;
			FUNC4(1000);
		}
		if (i == DIV_TIMEOUT)
			rv = ETIMEDOUT;
	}
	FUNC2(sc);

	*fout = fin / divider;
	return (rv);
}