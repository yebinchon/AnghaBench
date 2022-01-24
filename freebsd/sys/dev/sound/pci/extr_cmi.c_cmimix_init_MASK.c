#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int32_t ;
struct snd_mixer {int dummy; } ;
struct sc_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ rec; scalar_t__ bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMPCI_SB16_MIXER_ADCMIX_L ; 
 int /*<<< orphan*/  CMPCI_SB16_MIXER_ADCMIX_R ; 
 int /*<<< orphan*/  CMPCI_SB16_MIXER_OUTMIX ; 
 int /*<<< orphan*/  CMPCI_SB16_MIXER_RESET ; 
 int CMPCI_SB16_SW_CD ; 
 int CMPCI_SB16_SW_LINE ; 
 int CMPCI_SB16_SW_MIC ; 
 size_t SOUND_MIXER_NRDEVICES ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* cmt ; 
 struct sc_info* FUNC1 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer*,size_t) ; 

__attribute__((used)) static int
FUNC4(struct snd_mixer *m)
{
	struct sc_info	*sc = FUNC1(m);
	u_int32_t	i,v;

	for(i = v = 0; i < SOUND_MIXER_NRDEVICES; i++) {
		if (cmt[i].bits) v |= 1 << i;
	}
	FUNC2(m, v);

	for(i = v = 0; i < SOUND_MIXER_NRDEVICES; i++) {
		if (cmt[i].rec) v |= 1 << i;
	}
	FUNC3(m, v);

	FUNC0(sc, CMPCI_SB16_MIXER_RESET, 0);
	FUNC0(sc, CMPCI_SB16_MIXER_ADCMIX_L, 0);
	FUNC0(sc, CMPCI_SB16_MIXER_ADCMIX_R, 0);
	FUNC0(sc, CMPCI_SB16_MIXER_OUTMIX,
		  CMPCI_SB16_SW_CD | CMPCI_SB16_SW_MIC | CMPCI_SB16_SW_LINE);
	return 0;
}