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
struct usb_page_search {int length; scalar_t__ buffer; } ;
struct saf1761_otg_td {int offset; int remainder; int /*<<< orphan*/  pc; int /*<<< orphan*/  channel; } ;
struct saf1761_otg_softc {scalar_t__ sc_bounce_buffer; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saf1761_otg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct saf1761_otg_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOTG_MEMORY_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct usb_page_search*) ; 

__attribute__((used)) static void
FUNC6(struct saf1761_otg_softc *sc,
    struct saf1761_otg_td *td, uint32_t len)
{
	struct usb_page_search buf_res;
	uint32_t offset;
	uint32_t count;

	if (len == 0)
		return;

	offset = FUNC2(td->channel);
	FUNC1(sc, SOTG_MEMORY_REG, offset);
	FUNC0(sc);	/* read prefetch time is 90ns */

	/* optimised read first */
	while (len > 0) {
		FUNC5(td->pc, td->offset, &buf_res);

		/* get correct length */
		if (buf_res.length > len)
			buf_res.length = len;

		/* check buffer alignment */
		if (((uintptr_t)buf_res.buffer) & 3)
			break;

		count = buf_res.length & ~3;
		if (count == 0)
			break;

		FUNC3((sc)->sc_io_tag, (sc)->sc_io_hdl,
		    offset, buf_res.buffer, count / 4);

		len -= count;
		offset += count;

		/* update remainder and offset */
		td->remainder -= count;
		td->offset += count;
	}

	if (len > 0) {
		/* use bounce buffer */
		FUNC3((sc)->sc_io_tag, (sc)->sc_io_hdl,
		    offset, sc->sc_bounce_buffer, (len + 3) / 4);
		FUNC4(td->pc, td->offset,
		    sc->sc_bounce_buffer, len);

		/* update remainder and offset */
		td->remainder -= len;
		td->offset += len;
	}
}