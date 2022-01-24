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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int32_t ;
struct cs4231_softc {int dummy; } ;
struct cs4231_channel {int format; scalar_t__ dir; struct cs4231_softc* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  AFMT_A_LAW 133 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  AFMT_IMA_ADPCM 132 
#define  AFMT_MU_LAW 131 
#define  AFMT_S16_BE 130 
#define  AFMT_S16_LE 129 
#define  AFMT_U8 128 
 int /*<<< orphan*/  FUNC2 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  CS_AFMT_A_LAW ; 
 int /*<<< orphan*/  CS_AFMT_IMA_ADPCM ; 
 int /*<<< orphan*/  CS_AFMT_MU_LAW ; 
 int /*<<< orphan*/  CS_AFMT_S16_BE ; 
 int /*<<< orphan*/  CS_AFMT_S16_LE ; 
 int /*<<< orphan*/  CS_AFMT_STEREO ; 
 int /*<<< orphan*/  CS_AFMT_U8 ; 
 int /*<<< orphan*/  CS_CLOCK_DATA_FORMAT ; 
 int /*<<< orphan*/  CS_CLOCK_DATA_FORMAT_MASK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC5 (struct cs4231_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(kobj_t obj, void *data, u_int32_t format)
{
	struct cs4231_softc *sc;
	struct cs4231_channel *ch;
	u_int32_t encoding;
	u_int8_t fs, v;

	ch = data;
	sc = ch->parent;

	FUNC2(sc);
	if (ch->format == format) {
		FUNC3(sc);
		return (0);
	}

	encoding = FUNC1(format);
	fs = 0;
	switch (encoding) {
	case AFMT_U8:
		fs = CS_AFMT_U8;
		break;
	case AFMT_MU_LAW:
		fs = CS_AFMT_MU_LAW;
		break;
	case AFMT_S16_LE:
		fs = CS_AFMT_S16_LE;
		break;
	case AFMT_A_LAW:
		fs = CS_AFMT_A_LAW;
		break;
	case AFMT_IMA_ADPCM:
		fs = CS_AFMT_IMA_ADPCM;
		break;
	case AFMT_S16_BE:
		fs = CS_AFMT_S16_BE;
		break;
	default:
		fs = CS_AFMT_U8;
		format = AFMT_U8;
		break;
	}

	if (FUNC0(format) > 1)
		fs |= CS_AFMT_STEREO;
	
	FUNC4(("FORMAT: %s : 0x%x\n", ch->dir == PCMDIR_PLAY ? "playback" :
	    "capture", format));
	v = FUNC6(sc, CS_CLOCK_DATA_FORMAT);
	v &= CS_CLOCK_DATA_FORMAT_MASK;
	fs |= v;
	FUNC5(sc, ch->dir, fs);
	ch->format = format;
	FUNC3(sc);

	return (0);
}