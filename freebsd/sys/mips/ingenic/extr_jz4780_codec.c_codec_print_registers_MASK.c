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
struct codec_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AICR_ADC ; 
 int /*<<< orphan*/  AICR_DAC ; 
 int /*<<< orphan*/  CR_ADC ; 
 int /*<<< orphan*/  CR_ADC_AGC ; 
 int /*<<< orphan*/  CR_CK ; 
 int /*<<< orphan*/  CR_DAC ; 
 int /*<<< orphan*/  CR_DMIC ; 
 int /*<<< orphan*/  CR_HP ; 
 int /*<<< orphan*/  CR_LI1 ; 
 int /*<<< orphan*/  CR_LI2 ; 
 int /*<<< orphan*/  CR_LO ; 
 int /*<<< orphan*/  CR_MIC1 ; 
 int /*<<< orphan*/  CR_MIC2 ; 
 int /*<<< orphan*/  CR_MIX ; 
 int /*<<< orphan*/  CR_TIMER_LSB ; 
 int /*<<< orphan*/  CR_TIMER_MSB ; 
 int /*<<< orphan*/  CR_VIC ; 
 int /*<<< orphan*/  DR_ADC_AGC ; 
 int /*<<< orphan*/  DR_MIX ; 
 int /*<<< orphan*/  FCR_ADC ; 
 int /*<<< orphan*/  FCR_DAC ; 
 int /*<<< orphan*/  GCR_ADCL ; 
 int /*<<< orphan*/  GCR_ADCR ; 
 int /*<<< orphan*/  GCR_DACL ; 
 int /*<<< orphan*/  GCR_DACR ; 
 int /*<<< orphan*/  GCR_HPL ; 
 int /*<<< orphan*/  GCR_HPR ; 
 int /*<<< orphan*/  GCR_LIBYL ; 
 int /*<<< orphan*/  GCR_LIBYR ; 
 int /*<<< orphan*/  GCR_MIC1 ; 
 int /*<<< orphan*/  GCR_MIC2 ; 
 int /*<<< orphan*/  GCR_MIXADCL ; 
 int /*<<< orphan*/  GCR_MIXADCR ; 
 int /*<<< orphan*/  GCR_MIXDACL ; 
 int /*<<< orphan*/  GCR_MIXDACR ; 
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  IFR ; 
 int /*<<< orphan*/  IFR2 ; 
 int /*<<< orphan*/  IMR ; 
 int /*<<< orphan*/  IMR2 ; 
 int /*<<< orphan*/  MR ; 
 int /*<<< orphan*/  SR ; 
 int /*<<< orphan*/  SR2 ; 
 int FUNC0 (struct codec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void
FUNC2(struct codec_softc *sc)
{

	FUNC1("codec SR %x\n", FUNC0(sc, SR));
	FUNC1("codec SR2 %x\n", FUNC0(sc, SR2));
	FUNC1("codec MR %x\n", FUNC0(sc, MR));
	FUNC1("codec AICR_DAC %x\n", FUNC0(sc, AICR_DAC));
	FUNC1("codec AICR_ADC %x\n", FUNC0(sc, AICR_ADC));
	FUNC1("codec CR_LO %x\n", FUNC0(sc, CR_LO));
	FUNC1("codec CR_HP %x\n", FUNC0(sc, CR_HP));
	FUNC1("codec CR_DMIC %x\n", FUNC0(sc, CR_DMIC));
	FUNC1("codec CR_MIC1 %x\n", FUNC0(sc, CR_MIC1));
	FUNC1("codec CR_MIC2 %x\n", FUNC0(sc, CR_MIC2));
	FUNC1("codec CR_LI1 %x\n", FUNC0(sc, CR_LI1));
	FUNC1("codec CR_LI2 %x\n", FUNC0(sc, CR_LI2));
	FUNC1("codec CR_DAC %x\n", FUNC0(sc, CR_DAC));
	FUNC1("codec CR_ADC %x\n", FUNC0(sc, CR_ADC));
	FUNC1("codec CR_MIX %x\n", FUNC0(sc, CR_MIX));
	FUNC1("codec DR_MIX %x\n", FUNC0(sc, DR_MIX));
	FUNC1("codec CR_VIC %x\n", FUNC0(sc, CR_VIC));
	FUNC1("codec CR_CK %x\n", FUNC0(sc, CR_CK));
	FUNC1("codec FCR_DAC %x\n", FUNC0(sc, FCR_DAC));
	FUNC1("codec FCR_ADC %x\n", FUNC0(sc, FCR_ADC));
	FUNC1("codec CR_TIMER_MSB %x\n", FUNC0(sc, CR_TIMER_MSB));
	FUNC1("codec CR_TIMER_LSB %x\n", FUNC0(sc, CR_TIMER_LSB));
	FUNC1("codec ICR %x\n", FUNC0(sc, ICR));
	FUNC1("codec IMR %x\n", FUNC0(sc, IMR));
	FUNC1("codec IFR %x\n", FUNC0(sc, IFR));
	FUNC1("codec IMR2 %x\n", FUNC0(sc, IMR2));
	FUNC1("codec IFR2 %x\n", FUNC0(sc, IFR2));
	FUNC1("codec GCR_HPL %x\n", FUNC0(sc, GCR_HPL));
	FUNC1("codec GCR_HPR %x\n", FUNC0(sc, GCR_HPR));
	FUNC1("codec GCR_LIBYL %x\n", FUNC0(sc, GCR_LIBYL));
	FUNC1("codec GCR_LIBYR %x\n", FUNC0(sc, GCR_LIBYR));
	FUNC1("codec GCR_DACL %x\n", FUNC0(sc, GCR_DACL));
	FUNC1("codec GCR_DACR %x\n", FUNC0(sc, GCR_DACR));
	FUNC1("codec GCR_MIC1 %x\n", FUNC0(sc, GCR_MIC1));
	FUNC1("codec GCR_MIC2 %x\n", FUNC0(sc, GCR_MIC2));
	FUNC1("codec GCR_ADCL %x\n", FUNC0(sc, GCR_ADCL));
	FUNC1("codec GCR_ADCR %x\n", FUNC0(sc, GCR_ADCR));
	FUNC1("codec GCR_MIXDACL %x\n", FUNC0(sc, GCR_MIXDACL));
	FUNC1("codec GCR_MIXDACR %x\n", FUNC0(sc, GCR_MIXDACR));
	FUNC1("codec GCR_MIXADCL %x\n", FUNC0(sc, GCR_MIXADCL));
	FUNC1("codec GCR_MIXADCR %x\n", FUNC0(sc, GCR_MIXADCR));
	FUNC1("codec CR_ADC_AGC %x\n", FUNC0(sc, CR_ADC_AGC));
	FUNC1("codec DR_ADC_AGC %x\n", FUNC0(sc, DR_ADC_AGC));
}