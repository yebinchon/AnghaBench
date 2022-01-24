#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {struct ifnet* rcvif; int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_5__ m_pkthdr; int /*<<< orphan*/  m_len; } ;
struct m_tag {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_bpf; } ;
struct TYPE_10__ {int /*<<< orphan*/  fc; } ;
struct TYPE_8__ {struct ifnet* fwip_ifp; } ;
struct fwip_softc {TYPE_3__ fd; TYPE_1__ fw_softc; } ;
struct TYPE_13__ {int dest_lo; scalar_t__ tcode; int src; int /*<<< orphan*/  len; scalar_t__ dest_hi; } ;
struct TYPE_14__ {TYPE_6__ wreqb; } ;
struct fw_pkt {TYPE_7__ mode; } ;
struct TYPE_9__ {struct fw_pkt hdr; } ;
struct fw_xfer {TYPE_2__ recv; struct mbuf* mbuf; scalar_t__ sc; } ;
struct TYPE_11__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct fw_device {TYPE_4__ eui; } ;

/* Variables and functions */
 int FWRCODE_COMPLETE ; 
 int FWRCODE_ER_ADDR ; 
 int FWRCODE_ER_TYPE ; 
 scalar_t__ FWTCODE_WREQB ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int INET_FIFO ; 
 int /*<<< orphan*/  MTAG_FIREWIRE ; 
 int /*<<< orphan*/  MTAG_FIREWIRE_SENDER_EUID ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct mbuf*,int) ; 
 struct fw_device* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fwip_softc*,struct fw_xfer*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 struct m_tag* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,struct m_tag*) ; 

__attribute__((used)) static void
FUNC9(struct fw_xfer *xfer)
{
	uint64_t address;
	struct mbuf *m;
	struct m_tag *mtag;
	struct ifnet *ifp;
	struct fwip_softc *fwip;
	struct fw_pkt *fp;
	//struct fw_pkt *sfp;
	int rtcode;

	fwip = (struct fwip_softc *)xfer->sc;
	ifp = fwip->fw_softc.fwip_ifp;
	m = xfer->mbuf;
	xfer->mbuf = 0;
	fp = &xfer->recv.hdr;

	/*
	 * Check the fifo address - we only accept addresses of
	 * exactly INET_FIFO.
	 */
	address = ((uint64_t)fp->mode.wreqb.dest_hi << 32)
		| fp->mode.wreqb.dest_lo;
	if (fp->mode.wreqb.tcode != FWTCODE_WREQB) {
		rtcode = FWRCODE_ER_TYPE;
	} else if (address != INET_FIFO) {
		rtcode = FWRCODE_ER_ADDR;
	} else {
		rtcode = FWRCODE_COMPLETE;
	}

	/*
	 * Pick up a new mbuf and stick it on the back of the receive
	 * queue.
	 */
	FUNC3(fwip, xfer);

	/*
	 * If we've already rejected the packet, give up now.
	 */
	if (rtcode != FWRCODE_COMPLETE) {
		FUNC6(m);
		FUNC5(ifp, IFCOUNTER_IERRORS, 1);
		return;
	}

	if (FUNC0(ifp->if_bpf)) {
		/*
		 * Record the sender ID for possible BPF usage.
		 */
		mtag = FUNC7(MTAG_FIREWIRE, MTAG_FIREWIRE_SENDER_EUID,
		    2*sizeof(uint32_t), M_NOWAIT);
		if (mtag) {
			/* bpf wants it in network byte order */
			struct fw_device *fd;
			uint32_t *p = (uint32_t *) (mtag + 1);
			fd = FUNC2(fwip->fd.fc,
			    fp->mode.wreqb.src & 0x3f);
			if (fd) {
				p[0] = FUNC4(fd->eui.hi);
				p[1] = FUNC4(fd->eui.lo);
			} else {
				p[0] = 0;
				p[1] = 0;
			}
			FUNC8(m, mtag);
		}
	}

	/*
	 * Hand off to the generic encapsulation code. We don't use
	 * ifp->if_input so that we can pass the source nodeid as an
	 * argument to facilitate link-level fragment reassembly.
	 */
	m->m_len = m->m_pkthdr.len = fp->mode.wreqb.len;
	m->m_pkthdr.rcvif = ifp;
	FUNC1(ifp, m, fp->mode.wreqb.src);
	FUNC5(ifp, IFCOUNTER_IPACKETS, 1);
}