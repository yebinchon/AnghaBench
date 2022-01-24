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
typedef  int u_long ;
struct csa_info {int pfie; int /*<<< orphan*/  res; } ;
struct csa_chinfo {scalar_t__ dir; int fmt; int /*<<< orphan*/  spd; int /*<<< orphan*/  buffer; struct csa_info* parent; } ;
typedef  int /*<<< orphan*/  csa_res ;

/* Variables and functions */
 int AFMT_16BIT ; 
 int AFMT_8BIT ; 
 int AFMT_BIGENDIAN ; 
 int FUNC0 (int) ; 
 int AFMT_SIGNED ; 
 int /*<<< orphan*/  BA1_CBA ; 
 int /*<<< orphan*/  BA1_CIE ; 
 int /*<<< orphan*/  BA1_PBA ; 
 int /*<<< orphan*/  BA1_PDTC ; 
 int /*<<< orphan*/  BA1_PFIE ; 
 scalar_t__ PCMDIR_PLAY ; 
 scalar_t__ PCMDIR_REC ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct csa_chinfo *ch)
{
	struct csa_info *csa = ch->parent;
	csa_res *resp = &csa->res;
	u_long pdtc, tmp;

	if (ch->dir == PCMDIR_PLAY) {
		/* direction */
		FUNC4(resp, BA1_PBA, FUNC5(ch->buffer));

		/* format */
		csa->pfie = FUNC1(resp, BA1_PFIE) & ~0x0000f03f;
		if (!(ch->fmt & AFMT_SIGNED))
			csa->pfie |= 0x8000;
		if (ch->fmt & AFMT_BIGENDIAN)
			csa->pfie |= 0x4000;
		if (FUNC0(ch->fmt) < 2)
			csa->pfie |= 0x2000;
		if (ch->fmt & AFMT_8BIT)
			csa->pfie |= 0x1000;
		FUNC4(resp, BA1_PFIE, csa->pfie);

		tmp = 4;
		if (ch->fmt & AFMT_16BIT)
			tmp <<= 1;
		if (FUNC0(ch->fmt) > 1)
			tmp <<= 1;
		tmp--;

		pdtc = FUNC1(resp, BA1_PDTC) & ~0x000001ff;
		pdtc |= tmp;
		FUNC4(resp, BA1_PDTC, pdtc);

		/* rate */
		FUNC3(resp, ch->spd);
	} else if (ch->dir == PCMDIR_REC) {
		/* direction */
		FUNC4(resp, BA1_CBA, FUNC5(ch->buffer));

		/* format */
		FUNC4(resp, BA1_CIE, (FUNC1(resp, BA1_CIE) & ~0x0000003f) | 0x00000001);

		/* rate */
		FUNC2(resp, ch->spd);
	}
	return 0;
}