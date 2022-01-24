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
typedef  int uint16_t ;
struct bwn_phy_lp_iq_est {int ie_ipwr; int ie_qpwr; int ie_iqprod; } ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_PHY_RX_COMP_COEFF_S ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct bwn_mac*,int,int,struct bwn_phy_lp_iq_est*) ; 
 int FUNC7 (struct bwn_mac*,int) ; 

__attribute__((used)) static int
FUNC8(struct bwn_mac *mac, uint16_t sample)
{
#define	CALC_COEFF(_v, _x, _y, _z)	do {				\
	int _t;								\
	_t = _x - 20;							\
	if (_t >= 0) {							\
		_v = ((_y << (30 - _x)) + (_z >> (1 + _t))) / (_z >> _t); \
	} else {							\
		_v = ((_y << (30 - _x)) + (_z << (-1 - _t))) / (_z << -_t); \
	}								\
} while (0)
#define	CALC_COEFF2(_v, _x, _y, _z)	do {				\
	int _t;								\
	_t = _x - 11;							\
	if (_t >= 0)							\
		_v = (_y << (31 - _x)) / (_z >> _t);			\
	else								\
		_v = (_y << (31 - _x)) / (_z << -_t);			\
} while (0)
	struct bwn_phy_lp_iq_est ie;
	uint16_t v0, v1;
	int tmp[2], ret;

	v1 = FUNC1(mac, BWN_PHY_RX_COMP_COEFF_S);
	v0 = v1 >> 8;
	v1 |= 0xff;

	FUNC2(mac, BWN_PHY_RX_COMP_COEFF_S, 0xff00, 0x00c0);
	FUNC0(mac, BWN_PHY_RX_COMP_COEFF_S, 0x00ff);

	ret = FUNC6(mac, sample, 32, &ie);
	if (ret == 0)
		goto done;

	if (ie.ie_ipwr + ie.ie_qpwr < 2) {
		ret = 0;
		goto done;
	}

	CALC_COEFF(tmp[0], FUNC5(ie.ie_iqprod), ie.ie_iqprod, ie.ie_ipwr);
	CALC_COEFF2(tmp[1], FUNC5(ie.ie_qpwr), ie.ie_qpwr, ie.ie_ipwr);

	tmp[1] = -FUNC7(mac, tmp[1] - (tmp[0] * tmp[0]));
	v0 = tmp[0] >> 3;
	v1 = tmp[1] >> 4;
done:
	FUNC2(mac, BWN_PHY_RX_COMP_COEFF_S, 0xff00, v1);
	FUNC2(mac, BWN_PHY_RX_COMP_COEFF_S, 0x00ff, v0 << 8);
	return ret;
#undef CALC_COEFF
#undef CALC_COEFF2
}