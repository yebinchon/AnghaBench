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
typedef  int /*<<< orphan*/  csa_res ;

/* Variables and functions */
 scalar_t__ BA1_CCI ; 
 scalar_t__ BA1_CCST ; 
 scalar_t__ BA1_CD ; 
 scalar_t__ BA1_CFG1 ; 
 scalar_t__ BA1_CFG2 ; 
 scalar_t__ BA1_CPI ; 
 scalar_t__ BA1_CSPB ; 
 scalar_t__ BA1_CSRC ; 
 int BA1_VARIDEC_BUF_1 ; 
 int GOF_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC1(csa_res *resp, u_long ulOutRate)
{
	u_long ulPhiIncr, ulCoeffIncr, ulTemp1, ulTemp2;
	u_long ulCorrectionPerGOF, ulCorrectionPerSec, ulInitialDelay;
	u_long dwFrameGroupLength, dwCnt;
	u_long ulInRate;

	ulInRate = 48000;

	/*
	 * We can only decimate by up to a factor of 1/9th the hardware rate.
	 * Return an error if an attempt is made to stray outside that limit.
	 */
	if((ulOutRate * 9) < ulInRate)
		return;

	/*
	 * We can not capture at at rate greater than the Input Rate (48000).
	 * Return an error if an attempt is made to stray outside that limit.
	 */
	if(ulOutRate > ulInRate)
		return;

	/*
	 * Compute the values used to drive the actual sample rate conversion.
	 * The following formulas are being computed, using inline assembly
	 * since we need to use 64 bit arithmetic to compute the values:
	 *
	 *     ulCoeffIncr = -floor((Fs,out * 2^23) / Fs,in)
	 *     ulPhiIncr = floor((Fs,in * 2^26) / Fs,out)
	 *     ulCorrectionPerGOF = floor((Fs,in * 2^26 - Fs,out * ulPhiIncr) /
	 *                                GOF_PER_SEC)
	 *     ulCorrectionPerSec = Fs,in * 2^26 - Fs,out * phiIncr -
	 *                          GOF_PER_SEC * ulCorrectionPerGOF
	 *     ulInitialDelay = ceil((24 * Fs,in) / Fs,out)
	 *
	 * i.e.
	 *
	 *     ulCoeffIncr = neg(dividend((Fs,out * 2^23) / Fs,in))
	 *     ulPhiIncr:ulOther = dividend:remainder((Fs,in * 2^26) / Fs,out)
	 *     ulCorrectionPerGOF:ulCorrectionPerSec =
	 *         dividend:remainder(ulOther / GOF_PER_SEC)
	 *     ulInitialDelay = dividend(((24 * Fs,in) + Fs,out - 1) / Fs,out)
	 */
	ulTemp1 = ulOutRate << 16;
	ulCoeffIncr = ulTemp1 / ulInRate;
	ulTemp1 -= ulCoeffIncr * ulInRate;
	ulTemp1 <<= 7;
	ulCoeffIncr <<= 7;
	ulCoeffIncr += ulTemp1 / ulInRate;
	ulCoeffIncr ^= 0xFFFFFFFF;
	ulCoeffIncr++;
	ulTemp1 = ulInRate << 16;
	ulPhiIncr = ulTemp1 / ulOutRate;
	ulTemp1 -= ulPhiIncr * ulOutRate;
	ulTemp1 <<= 10;
	ulPhiIncr <<= 10;
	ulTemp2 = ulTemp1 / ulOutRate;
	ulPhiIncr += ulTemp2;
	ulTemp1 -= ulTemp2 * ulOutRate;
	ulCorrectionPerGOF = ulTemp1 / GOF_PER_SEC;
	ulTemp1 -= ulCorrectionPerGOF * GOF_PER_SEC;
	ulCorrectionPerSec = ulTemp1;
	ulInitialDelay = ((ulInRate * 24) + ulOutRate - 1) / ulOutRate;

	/*
	 * Fill in the VariDecimate control block.
	 */
	FUNC0(resp, BA1_CSRC,
		     ((ulCorrectionPerSec << 16) & 0xFFFF0000) | (ulCorrectionPerGOF & 0xFFFF));
	FUNC0(resp, BA1_CCI, ulCoeffIncr);
	FUNC0(resp, BA1_CD,
	     (((BA1_VARIDEC_BUF_1 + (ulInitialDelay << 2)) << 16) & 0xFFFF0000) | 0x80);
	FUNC0(resp, BA1_CPI, ulPhiIncr);

	/*
	 * Figure out the frame group length for the write back task.  Basically,
	 * this is just the factors of 24000 (2^6*3*5^3) that are not present in
	 * the output sample rate.
	 */
	dwFrameGroupLength = 1;
	for(dwCnt = 2; dwCnt <= 64; dwCnt *= 2)
	{
		if(((ulOutRate / dwCnt) * dwCnt) !=
		   ulOutRate)
		{
			dwFrameGroupLength *= 2;
		}
	}
	if(((ulOutRate / 3) * 3) !=
	   ulOutRate)
	{
		dwFrameGroupLength *= 3;
	}
	for(dwCnt = 5; dwCnt <= 125; dwCnt *= 5)
	{
		if(((ulOutRate / dwCnt) * dwCnt) !=
		   ulOutRate)
		{
			dwFrameGroupLength *= 5;
		}
	}

	/*
	 * Fill in the WriteBack control block.
	 */
	FUNC0(resp, BA1_CFG1, dwFrameGroupLength);
	FUNC0(resp, BA1_CFG2, (0x00800000 | dwFrameGroupLength));
	FUNC0(resp, BA1_CCST, 0x0000FFFF);
	FUNC0(resp, BA1_CSPB, ((65536 * ulOutRate) / 24000));
	FUNC0(resp, (BA1_CSPB + 4), 0x0000FFFF);
}