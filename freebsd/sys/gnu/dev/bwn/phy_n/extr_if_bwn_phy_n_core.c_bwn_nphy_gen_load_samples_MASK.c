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
typedef  int uint16_t ;
struct bwn_mac {int /*<<< orphan*/  mac_sc; } ;
struct bwn_c32 {int q; int i; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  BWN_NPHY_BBCFG ; 
 int BWN_NPHY_BBCFG_RSTRX ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct bwn_c32 FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct bwn_mac*) ; 
 int FUNC5 (struct bwn_mac*,struct bwn_c32*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_c32*,int /*<<< orphan*/ ) ; 
 struct bwn_c32* FUNC7 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint16_t FUNC8(struct bwn_mac *mac, uint32_t freq, uint16_t max,
					bool test)
{
	int i;
	uint16_t bw, len, rot, angle;
	struct bwn_c32 *samples;

	bw = FUNC4(mac) ? 40 : 20;
	len = bw << 3;

	if (test) {
		if (FUNC1(mac, BWN_NPHY_BBCFG) & BWN_NPHY_BBCFG_RSTRX)
			bw = 82;
		else
			bw = 80;

		if (FUNC4(mac))
			bw <<= 1;

		len = bw << 1;
	}

	samples = FUNC7(len * sizeof(struct bwn_c32), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (!samples) {
		FUNC0(mac->mac_sc, "allocation for samples generation failed\n");
		return 0;
	}
	rot = (((freq * 36) / bw) << 16) / 100;
	angle = 0;

	for (i = 0; i < len; i++) {
		samples[i] = FUNC3(angle);
		angle += rot;
		samples[i].q = FUNC2(samples[i].q * max);
		samples[i].i = FUNC2(samples[i].i * max);
	}

	i = FUNC5(mac, samples, len);
	FUNC6(samples, M_DEVBUF);
	return (i < 0) ? 0 : len;
}