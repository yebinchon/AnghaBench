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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct ess_info {scalar_t__ newspeed; } ;

/* Variables and functions */
 int AFMT_16BIT ; 
 int FUNC0 (int) ; 
 int AFMT_U16_LE ; 
 int AFMT_U8 ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PCMDIR_PLAY ; 
 int PCMDIR_REC ; 
 int FUNC2 (int) ; 
 int FUNC3 (int*) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (struct ess_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ess_info*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ess_info*,int,int) ; 

__attribute__((used)) static int
FUNC8(struct ess_info *sc, int ch, int dir, int spd, u_int32_t fmt, int len)
{
	int play = (dir == PCMDIR_PLAY)? 1 : 0;
	int b16 = (fmt & AFMT_16BIT)? 1 : 0;
	int stereo = (FUNC0(fmt) > 1)? 1 : 0;
	int unsign = (fmt == AFMT_U8 || fmt == AFMT_U16_LE)? 1 : 0;
	u_int8_t spdval, fmtval;


	spdval = (sc->newspeed)? FUNC4(&spd) : FUNC3(&spd);
	len = -len;

	if (ch == 1) {
		FUNC1((dir == PCMDIR_PLAY) || (dir == PCMDIR_REC), ("ess_setupch: dir1 bad"));
		/* transfer length low */
		FUNC7(sc, 0xa4, len & 0x00ff);
		/* transfer length high */
		FUNC7(sc, 0xa5, (len & 0xff00) >> 8);
		/* autoinit, dma dir */
		FUNC7(sc, 0xb8, 0x04 | (play? 0x00 : 0x0a));
		/* mono/stereo */
		FUNC7(sc, 0xa8, (FUNC5(sc, 0xa8) & ~0x03) | (stereo? 0x01 : 0x02));
		/* demand mode, 4 bytes/xfer */
		FUNC7(sc, 0xb9, 0x02);
		/* sample rate */
        	FUNC7(sc, 0xa1, spdval);
		/* filter cutoff */
		FUNC7(sc, 0xa2, FUNC2(spd));
		/* setup dac/adc */
		if (play)
			FUNC7(sc, 0xb6, unsign? 0x80 : 0x00);
		/* mono, b16: signed, load signal */
		FUNC7(sc, 0xb7, 0x51 | (unsign? 0x00 : 0x20));
		/* setup fifo */
		FUNC7(sc, 0xb7, 0x90 | (unsign? 0x00 : 0x20) |
					   (b16? 0x04 : 0x00) |
					   (stereo? 0x08 : 0x40));
		/* irq control */
		FUNC7(sc, 0xb1, (FUNC5(sc, 0xb1) & 0x0f) | 0x50);
		/* drq control */
		FUNC7(sc, 0xb2, (FUNC5(sc, 0xb2) & 0x0f) | 0x50);
	} else if (ch == 2) {
		FUNC1(dir == PCMDIR_PLAY, ("ess_setupch: dir2 bad"));
		/* transfer length low */
		FUNC6(sc, 0x74, len & 0x00ff);
		/* transfer length high */
		FUNC6(sc, 0x76, (len & 0xff00) >> 8);
		/* autoinit, 4 bytes/req */
		FUNC6(sc, 0x78, 0x90);
		fmtval = b16 | (stereo << 1) | (unsign << 2);
		/* enable irq, set format */
		FUNC6(sc, 0x7a, 0x40 | fmtval);
		if (sc->newspeed) {
			/* sample rate */
			FUNC6(sc, 0x70, spdval);
			/* filter cutoff */
			FUNC6(sc, 0x72, FUNC2(spd));
		}
	}

	return 0;
}