#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct TYPE_4__ {scalar_t__ bytes; } ;
struct TYPE_3__ {scalar_t__ bytes; } ;
struct modem {scalar_t__ loop_data; int /*<<< orphan*/  xfer_out; int /*<<< orphan*/  xfer_in; int /*<<< orphan*/  usb_dev; scalar_t__ random_tx_delay; scalar_t__ random_tx_length; scalar_t__ errors; TYPE_2__ tx_bytes; TYPE_1__ rx_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC18 (struct timeval*,struct timeval*,struct timeval*) ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 

__attribute__((used)) static void
FUNC21(struct modem *p, uint32_t duration)
{
	struct timeval sub_tv;
	struct timeval ref_tv;
	struct timeval res_tv;

	time_t last_sec;

	uint8_t in_pending = 0;
	uint8_t in_ready = 0;
	uint8_t out_pending = 0;

	uint32_t id = 0;

	uint32_t in_max;
	uint32_t out_max;
	uint32_t io_max;

	uint8_t *in_buffer = 0;
	uint8_t *out_buffer = 0;

	FUNC2(&ref_tv, 0);

	last_sec = ref_tv.tv_sec;

	FUNC17("\n");

	in_max = FUNC7(p->xfer_in);
	out_max = FUNC7(p->xfer_out);

	/* get the smallest buffer size and use that */
	io_max = (in_max < out_max) ? in_max : out_max;

	if (in_max != out_max)
		FUNC17("WARNING: Buffer sizes are un-equal: %u vs %u\n", in_max, out_max);

	in_buffer = FUNC13(io_max);
	if (in_buffer == NULL)
		goto fail;

	out_buffer = FUNC13(io_max);
	if (out_buffer == NULL)
		goto fail;

	while (1) {

		FUNC2(&sub_tv, 0);

		if (last_sec != sub_tv.tv_sec) {

			FUNC17("STATUS: ID=%u, RX=%u bytes/sec, TX=%u bytes/sec, ERR=%d\n",
			    (int)id,
			    (int)p->rx_bytes.bytes,
			    (int)p->tx_bytes.bytes,
			    (int)p->errors);

			p->rx_bytes.bytes = 0;
			p->tx_bytes.bytes = 0;

			FUNC0(stdout);

			last_sec = sub_tv.tv_sec;

			id++;
		}
		FUNC18(&sub_tv, &ref_tv, &res_tv);

		if ((res_tv.tv_sec < 0) || (res_tv.tv_sec >= (int)duration))
			break;

		FUNC4(p->usb_dev);

		if (!FUNC9(p->xfer_in)) {
			if (in_pending) {
				if (FUNC8(p->xfer_in) == 0) {
					FUNC15(in_buffer, FUNC6(p->xfer_in, 0));
				} else {
					p->errors++;
					FUNC20(10000);
				}
				in_pending = 0;
				in_ready = 1;
			}
			if (p->loop_data == 0) {
				FUNC10(p->xfer_in, in_buffer, io_max, 0);
				FUNC11(p->xfer_in);
				in_pending = 1;
				in_ready = 0;
			}
		}
		if (!FUNC9(p->xfer_out)) {

			uint32_t len;
			uint32_t dly;

			if (out_pending) {
				if (FUNC8(p->xfer_out) != 0) {
					p->errors++;
					FUNC20(10000);
				}
			}
			if (p->random_tx_length) {
				len = ((uint32_t)FUNC19()) % ((uint32_t)io_max);
			} else {
				len = io_max;
			}

			if (p->random_tx_delay) {
				dly = ((uint32_t)FUNC19()) % 16000U;
			} else {
				dly = 0;
			}

			if (p->loop_data != 0) {
				if (in_ready != 0) {
					len = FUNC6(p->xfer_in, 0);
					FUNC14(out_buffer, in_buffer, len);
					in_ready = 0;
				} else {
					len = io_max + 1;
				}
				if (!FUNC9(p->xfer_in)) {
					FUNC10(p->xfer_in, in_buffer, io_max, 0);
					FUNC11(p->xfer_in);
					in_pending = 1;
				}
			} else {
				FUNC16(out_buffer, len);
			}

			if (len <= io_max) {
				FUNC10(p->xfer_out, out_buffer, len, 0);

				if (dly != 0)
					FUNC20(dly);

				FUNC11(p->xfer_out);

				out_pending = 1;
			}
		}
		FUNC5(p->usb_dev, 500);

		if (FUNC3(p->usb_dev) != 0) {
			FUNC17("Device disconnected\n");
			break;
		}
	}

	FUNC12(p->xfer_in);
	FUNC12(p->xfer_out);

	FUNC17("\nData stress test done!\n");

fail:
	if (in_buffer)
		FUNC1(in_buffer);
	if (out_buffer)
		FUNC1(out_buffer);
}