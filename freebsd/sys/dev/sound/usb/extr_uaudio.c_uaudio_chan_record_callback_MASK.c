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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct uaudio_chan {scalar_t__ start; scalar_t__ end; int sample_curr; int sample_rem; int intr_frames; int* bytes_per_frame; int frames_per_second; size_t cur_alt; size_t set_alt; int cur; int jitter_curr; int /*<<< orphan*/  pcm_ch; int /*<<< orphan*/  running; TYPE_1__* usb_alt; } ;
struct TYPE_2__ {int sample_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int FUNC6 (struct usb_xfer*,int) ; 
 struct usb_page_cache* FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int) ; 
 struct uaudio_chan* FUNC11 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC13(struct usb_xfer *xfer, usb_error_t error)
{
	struct uaudio_chan *ch = FUNC11(xfer);
	struct usb_page_cache *pc;
	uint32_t offset0;
	uint32_t mfl;
	int m;
	int n;
	int len;
	int actlen;
	int nframes;
	int expected_bytes;
	int sample_size;

	if (ch->start == ch->end) {
		FUNC0("no buffer!\n");
		return;
	}

	FUNC12(xfer, &actlen, NULL, NULL, &nframes);
	mfl = FUNC8(xfer);

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:

		offset0 = 0;
		pc = FUNC7(xfer, 0);

		/* try to compute the number of expected bytes */
		ch->sample_curr += (ch->sample_rem * ch->intr_frames);

		/* compute number of expected bytes */
		expected_bytes = (ch->intr_frames * ch->bytes_per_frame[0]) +
		    ((ch->sample_curr / ch->frames_per_second) *
		    (ch->bytes_per_frame[1] - ch->bytes_per_frame[0]));

		/* keep remainder */
		ch->sample_curr %= ch->frames_per_second;

		/* get current sample size */
		sample_size = ch->usb_alt[ch->cur_alt].sample_size;

		for (n = 0; n != nframes; n++) {
			uint32_t offset1 = offset0;

			len = FUNC6(xfer, n);

			/* make sure we only receive complete samples */
			len = len - (len % sample_size);

			/* subtract bytes received from expected payload */
			expected_bytes -= len;

			/* don't receive data when not ready */
			if (ch->running == 0 || ch->cur_alt != ch->set_alt)
				continue;

			/* fill ring buffer with samples, if any */
			while (len > 0) {

				m = (ch->end - ch->cur);

				if (m > len)
					m = len;

				FUNC4(pc, offset1, ch->cur, m);

				len -= m;
				offset1 += m;
				ch->cur += m;

				if (ch->cur >= ch->end)
					ch->cur = ch->start;
			}

			offset0 += mfl;
		}

		/* update current jitter */
		ch->jitter_curr -= (expected_bytes / sample_size);

		/* don't allow a huge amount of jitter to accumulate */
		nframes = 2 * ch->intr_frames;

		/* range check current jitter */
		if (ch->jitter_curr < -nframes)
			ch->jitter_curr = -nframes;
		else if (ch->jitter_curr > nframes)
			ch->jitter_curr = nframes;

		FUNC1(6, "transferred %d bytes, jitter %d samples\n",
		    actlen, ch->jitter_curr);

		if (ch->running != 0)
			FUNC3(ch->pcm_ch);

	case USB_ST_SETUP:
tr_setup:
		nframes = ch->intr_frames;

		FUNC10(xfer, nframes);
		for (n = 0; n != nframes; n++)
			FUNC9(xfer, n, mfl);

		FUNC5(xfer);
		break;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED)
			goto tr_setup;
		break;
	}
}