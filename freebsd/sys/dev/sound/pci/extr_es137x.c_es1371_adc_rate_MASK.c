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
struct es_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct es_info*) ; 
 scalar_t__ ES_SMPREG_ADC ; 
 scalar_t__ ES_SMPREG_INT_REGS ; 
 scalar_t__ ES_SMPREG_TRUNC_N ; 
 scalar_t__ ES_SMPREG_VFREQ_FRAC ; 
 scalar_t__ ES_SMPREG_VOL_ADC ; 
 int FUNC1 (struct es_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct es_info*,scalar_t__,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC3(struct es_info *es, unsigned int rate, int set)
{
  	unsigned int n, truncm, freq, result;

	FUNC0(es);

  	if (rate > 48000)
		rate = 48000;
  	if (rate < 4000)
		rate = 4000;
  	n = rate / 3000;
  	if ((1 << n) & ((1 << 15) | (1 << 13) | (1 << 11) | (1 << 9)))
		n--;
  	truncm = (21 * n - 1) | 1;
  	freq = ((48000UL << 15) / rate) * n;
  	result = (48000UL << 15) / (freq / n);
  	if (set) {
		if (rate >= 24000) {
	  		if (truncm > 239)
				truncm = 239;
	  		FUNC2(es, ES_SMPREG_ADC + ES_SMPREG_TRUNC_N,
			    (((239 - truncm) >> 1) << 9) | (n << 4));
		} else {
	  		if (truncm > 119)
				truncm = 119;
	  		FUNC2(es, ES_SMPREG_ADC + ES_SMPREG_TRUNC_N,
			    0x8000 | (((119 - truncm) >> 1) << 9) | (n << 4));
		}
		FUNC2(es, ES_SMPREG_ADC + ES_SMPREG_INT_REGS,
		    (FUNC1(es, ES_SMPREG_ADC + ES_SMPREG_INT_REGS) &
		    0x00ff) | ((freq >> 5) & 0xfc00));
		FUNC2(es, ES_SMPREG_ADC + ES_SMPREG_VFREQ_FRAC,
		    freq & 0x7fff);
		FUNC2(es, ES_SMPREG_VOL_ADC, n << 8);
		FUNC2(es, ES_SMPREG_VOL_ADC + 1, n << 8);
	}
	return (result);
}