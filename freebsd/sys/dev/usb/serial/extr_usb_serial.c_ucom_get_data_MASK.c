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
typedef  int uint8_t ;
typedef  unsigned int uint32_t ;
struct usb_page_search {unsigned int length; int /*<<< orphan*/  buffer; } ;
struct usb_page_cache {int dummy; } ;
struct ucom_softc {int sc_flag; struct tty* sc_tty; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 unsigned int UCOM_CONS_BUFSIZE ; 
 int UCOM_FLAG_CONSOLE ; 
 int UCOM_FLAG_GP_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct ucom_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tty*) ; 
 unsigned int FUNC3 (struct tty*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ ucom_cons_tx_buf ; 
 unsigned int ucom_cons_tx_high ; 
 unsigned int ucom_cons_tx_low ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,unsigned int,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,unsigned int,struct usb_page_search*) ; 

uint8_t
FUNC6(struct ucom_softc *sc, struct usb_page_cache *pc,
    uint32_t offset, uint32_t len, uint32_t *actlen)
{
	struct usb_page_search res;
	struct tty *tp = sc->sc_tty;
	uint32_t cnt;
	uint32_t offset_orig;

	FUNC1(sc, MA_OWNED);

	if (sc->sc_flag & UCOM_FLAG_CONSOLE) {
		unsigned int temp;

		/* get total TX length */

		temp = ucom_cons_tx_high - ucom_cons_tx_low;
		temp %= UCOM_CONS_BUFSIZE;

		/* limit TX length */

		if (temp > (UCOM_CONS_BUFSIZE - ucom_cons_tx_low))
			temp = (UCOM_CONS_BUFSIZE - ucom_cons_tx_low);

		if (temp > len)
			temp = len;

		/* copy in data */

		FUNC4(pc, offset, ucom_cons_tx_buf + ucom_cons_tx_low, temp);

		/* update counters */

		ucom_cons_tx_low += temp;
		ucom_cons_tx_low %= UCOM_CONS_BUFSIZE;

		/* store actual length */

		*actlen = temp;

		return (temp ? 1 : 0);
	}

	if (FUNC2(tp) ||
	    !(sc->sc_flag & UCOM_FLAG_GP_DATA)) {
		actlen[0] = 0;
		return (0);		/* multiport device polling */
	}
	offset_orig = offset;

	while (len != 0) {

		FUNC5(pc, offset, &res);

		if (res.length > len) {
			res.length = len;
		}
		/* copy data directly into USB buffer */
		cnt = FUNC3(tp, res.buffer, res.length);

		offset += cnt;
		len -= cnt;

		if (cnt < res.length) {
			/* end of buffer */
			break;
		}
	}

	actlen[0] = offset - offset_orig;

	FUNC0("cnt=%d\n", actlen[0]);

	if (actlen[0] == 0) {
		return (0);
	}
	return (1);
}