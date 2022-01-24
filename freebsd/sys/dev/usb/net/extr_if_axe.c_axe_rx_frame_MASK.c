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
struct usb_page_cache {int dummy; } ;
struct usb_ether {int /*<<< orphan*/  ue_ifp; } ;
struct axe_softc {int sc_flags; int sc_lenmask; } ;
struct axe_sframe_hdr {int len; int ilen; int cstatus; } ;
struct axe_csum_hdr {int len; int ilen; int cstatus; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  csum_hdr ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int AXE_FLAG_CSUM_FRAME ; 
 int AXE_FLAG_STD_FRAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*,struct usb_page_cache*,int,int,struct axe_sframe_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int) ; 
 struct axe_softc* FUNC4 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,int,struct axe_sframe_hdr*,int) ; 

__attribute__((used)) static int
FUNC6(struct usb_ether *ue, struct usb_page_cache *pc, int actlen)
{
	struct axe_softc *sc;
	struct axe_sframe_hdr hdr;
	struct axe_csum_hdr csum_hdr;
	int error, len, pos;

	sc = FUNC4(ue);
	pos = 0;
	len = 0;
	error = 0;
	if ((sc->sc_flags & AXE_FLAG_STD_FRAME) != 0) {
		while (pos < actlen) {
			if ((int)(pos + sizeof(hdr)) > actlen) {
				/* too little data */
				error = EINVAL;
				break;
			}
			FUNC5(pc, pos, &hdr, sizeof(hdr));

			if ((hdr.len ^ hdr.ilen) != sc->sc_lenmask) {
				/* we lost sync */
				error = EINVAL;
				break;
			}
			pos += sizeof(hdr);
			len = FUNC3(hdr.len);
			if (pos + len > actlen) {
				/* invalid length */
				error = EINVAL;
				break;
			}
			FUNC1(ue, pc, pos, len, NULL);
			pos += len + (len % 2);
		}
	} else if ((sc->sc_flags & AXE_FLAG_CSUM_FRAME) != 0) {
		while (pos < actlen) {
			if ((int)(pos + sizeof(csum_hdr)) > actlen) {
				/* too little data */
				error = EINVAL;
				break;
			}
			FUNC5(pc, pos, &csum_hdr, sizeof(csum_hdr));

			csum_hdr.len = FUNC3(csum_hdr.len);
			csum_hdr.ilen = FUNC3(csum_hdr.ilen);
			csum_hdr.cstatus = FUNC3(csum_hdr.cstatus);
			if ((FUNC0(csum_hdr.len) ^
			    FUNC0(csum_hdr.ilen)) !=
			    sc->sc_lenmask) {
				/* we lost sync */
				error = EINVAL;
				break;
			}
			/*
			 * Get total transferred frame length including
			 * checksum header.  The length should be multiple
			 * of 4.
			 */
			len = sizeof(csum_hdr) + FUNC0(csum_hdr.len);
			len = (len + 3) & ~3;
			if (pos + len > actlen) {
				/* invalid length */
				error = EINVAL;
				break;
			}
			FUNC1(ue, pc, pos + sizeof(csum_hdr),
			    FUNC0(csum_hdr.len), &csum_hdr);
			pos += len;
		}
	} else
		FUNC1(ue, pc, 0, actlen, NULL);

	if (error != 0)
		FUNC2(ue->ue_ifp, IFCOUNTER_IERRORS, 1);
	return (error);
}