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
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct iovec {char* iov_base; int iov_len; } ;
struct fwohcidb_tr {int bus_addr; char* buf; TYPE_6__* db; int /*<<< orphan*/  dma_map; } ;
struct fwohci_trailer {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  status; } ;
struct TYPE_14__ {int psize; } ;
struct fwohci_dbch {int buf_offset; TYPE_7__ xferq; struct fwohcidb_tr* top; struct fwohcidb_tr* pdb_tr; int /*<<< orphan*/  dmat; int /*<<< orphan*/  am; } ;
struct fwohci_softc {TYPE_3__ fc; struct fwohci_dbch arrs; struct fwohci_dbch arrq; } ;
struct fw_rcv_buf {int nvec; int spd; struct iovec* vec; TYPE_3__* fc; } ;
struct TYPE_8__ {int tcode; } ;
struct TYPE_9__ {TYPE_1__ common; } ;
struct fw_pkt {TYPE_2__ mode; } ;
typedef  int /*<<< orphan*/  pktbuf ;
typedef  char* caddr_t ;
struct TYPE_11__ {int res; } ;
struct TYPE_12__ {TYPE_4__ desc; } ;
struct TYPE_13__ {TYPE_5__ db; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FWBUSINIT ; 
 int /*<<< orphan*/  FWBUSRESET ; 
#define  FWOHCIEV_ACKCOMPL 130 
#define  FWOHCIEV_ACKPEND 129 
#define  FWOHCIEV_BUSRST 128 
 int FUNC0 (int) ; 
 int OHCI_ARQOFF ; 
 int OHCI_ARSOFF ; 
 int OHCI_CNTL_DMA_ACTIVE ; 
 int /*<<< orphan*/  OHCI_CNTL_DMA_WAKE ; 
 int OHCI_COUNT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int OHCI_STATUS_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fwohci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fwohcidb_tr* FUNC4 (struct fwohcidb_tr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ firewire_debug ; 
 int /*<<< orphan*/  FUNC8 (struct fw_rcv_buf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fwohci_softc*,struct fwohci_dbch*,struct fwohcidb_tr*,int,int) ; 
 int FUNC11 (struct fw_pkt*,int) ; 
 int FUNC12 (struct fwohci_softc*,struct fwohci_dbch*,struct fw_pkt*) ; 
 int /*<<< orphan*/ * fwohcicode ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(struct fwohci_softc *sc, struct fwohci_dbch *dbch, int count)
{
	struct fwohcidb_tr *db_tr;
	struct iovec vec[2];
	struct fw_pkt pktbuf;
	int nvec;
	struct fw_pkt *fp;
	uint8_t *ld;
	uint32_t stat, off, status, event;
	u_int spd;
	int len, plen, hlen, pcnt, offset;
	int s;
	caddr_t buf;
	int resCount;

	if (&sc->arrq == dbch) {
		off = OHCI_ARQOFF;
	} else if (&sc->arrs == dbch) {
		off = OHCI_ARSOFF;
	} else {
		return;
	}

	s = FUNC14();
	db_tr = dbch->top;
	pcnt = 0;
	/* XXX we cannot handle a packet which lies in more than two buf */
	FUNC9(dbch->am, BUS_DMASYNC_POSTREAD);
	FUNC9(dbch->am, BUS_DMASYNC_POSTWRITE);
	status = FUNC0(db_tr->db[0].db.desc.res) >> OHCI_STATUS_SHIFT;
	resCount = FUNC0(db_tr->db[0].db.desc.res) & OHCI_COUNT_MASK;
	while (status & OHCI_CNTL_DMA_ACTIVE) {
#if 0

		if (off == OHCI_ARQOFF)
			printf("buf 0x%08x, status 0x%04x, resCount 0x%04x\n",
			    db_tr->bus_addr, status, resCount);
#endif
		len = dbch->xferq.psize - resCount;
		ld = (uint8_t *)db_tr->buf;
		if (dbch->pdb_tr == NULL) {
			len -= dbch->buf_offset;
			ld += dbch->buf_offset;
		}
		if (len > 0)
			FUNC6(dbch->dmat, db_tr->dma_map,
					BUS_DMASYNC_POSTREAD);
		while (len > 0) {
			if (count >= 0 && count-- == 0)
				goto out;
			if (dbch->pdb_tr != NULL) {
				/* we have a fragment in previous buffer */
				int rlen;

				offset = dbch->buf_offset;
				if (offset < 0)
					offset = - offset;
				buf = dbch->pdb_tr->buf + offset;
				rlen = dbch->xferq.psize - offset;
				if (firewire_debug)
					FUNC13("rlen=%d, offset=%d\n",
						rlen, dbch->buf_offset);
				if (dbch->buf_offset < 0) {
					/* splitted in header, pull up */
					char *p;

					p = (char *)&pktbuf;
					FUNC5(buf, p, rlen);
					p += rlen;
					/* this must be too long but harmless */
					rlen = sizeof(pktbuf) - rlen;
					if (rlen < 0)
						FUNC13("why rlen < 0\n");
					FUNC5(db_tr->buf, p, rlen);
					ld += rlen;
					len -= rlen;
					hlen = FUNC11(&pktbuf, sizeof(pktbuf));
					if (hlen <= 0) {
						FUNC13("hlen should be positive.");
						goto err;
					}
					offset = sizeof(pktbuf);
					vec[0].iov_base = (char *)&pktbuf;
					vec[0].iov_len = offset;
				} else {
					/* splitted in payload */
					offset = rlen;
					vec[0].iov_base = buf;
					vec[0].iov_len = rlen;
				}
				fp=(struct fw_pkt *)vec[0].iov_base;
				nvec = 1;
			} else {
				/* no fragment in previous buffer */
				fp=(struct fw_pkt *)ld;
				hlen = FUNC11(fp, len);
				if (hlen == 0)
					goto err;
				if (hlen < 0) {
					dbch->pdb_tr = db_tr;
					dbch->buf_offset = - dbch->buf_offset;
					/* sanity check */
					if (resCount != 0) {
						FUNC13("resCount=%d hlen=%d\n",
						    resCount, hlen);
						    goto err;
					}
					goto out;
				}
				offset = 0;
				nvec = 0;
			}
			plen = FUNC12(sc, dbch, fp) - offset;
			if (plen < 0) {
				/* minimum header size + trailer
				= sizeof(fw_pkt) so this shouldn't happens */
				FUNC13("plen(%d) is negative! offset=%d\n",
				    plen, offset);
				goto err;
			}
			if (plen > 0) {
				len -= plen;
				if (len < 0) {
					dbch->pdb_tr = db_tr;
					if (firewire_debug)
						FUNC13("splitted payload\n");
					/* sanity check */
					if (resCount != 0) {
						FUNC13("resCount=%d plen=%d"
						    " len=%d\n",
						    resCount, plen, len);
						goto err;
					}
					goto out;
				}
				vec[nvec].iov_base = ld;
				vec[nvec].iov_len = plen;
				nvec++;
				ld += plen;
			}
			dbch->buf_offset = ld - (uint8_t *)db_tr->buf;
			if (nvec == 0)
				FUNC13("nvec == 0\n");

/* DMA result-code will be written at the tail of packet */
			stat = FUNC0(*(uint32_t *)(ld - sizeof(struct fwohci_trailer)));
#if 0
			printf("plen: %d, stat %x\n",
			    plen ,stat);
#endif
			spd = (stat >> 21) & 0x3;
			event = (stat >> 16) & 0x1f;
			switch (event) {
			case FWOHCIEV_ACKPEND:
#if 0
				printf("fwohci_arcv: ack pending tcode=0x%x..\n", fp->mode.common.tcode);
#endif
				/* fall through */
			case FWOHCIEV_ACKCOMPL:
			{
				struct fw_rcv_buf rb;

				if ((vec[nvec-1].iov_len -=
					sizeof(struct fwohci_trailer)) == 0)
					nvec--;
				rb.fc = &sc->fc;
				rb.vec = vec;
				rb.nvec = nvec;
				rb.spd = spd;
				FUNC8(&rb);
				break;
			}
			case FWOHCIEV_BUSRST:
				if ((sc->fc.status != FWBUSRESET) &&
				    (sc->fc.status != FWBUSINIT))
					FUNC13("got BUSRST packet!?\n");
				break;
			default:
				FUNC7(sc->fc.dev,
				    "Async DMA Receive error err=%02x %s"
				    " plen=%d offset=%d len=%d status=0x%08x"
				    " tcode=0x%x, stat=0x%08x\n",
				    event, fwohcicode[event], plen,
				    dbch->buf_offset, len,
				    FUNC2(sc, FUNC1(off)),
				    fp->mode.common.tcode, stat);
#if 1 /* XXX */
				goto err;
#endif
				break;
			}
			pcnt++;
			if (dbch->pdb_tr != NULL) {
				FUNC10(sc, dbch, dbch->pdb_tr,
				    off, 1);
				dbch->pdb_tr = NULL;
			}

		}
out:
		if (resCount == 0) {
			/* done on this buffer */
			if (dbch->pdb_tr == NULL) {
				FUNC10(sc, dbch, db_tr, off, 1);
				dbch->buf_offset = 0;
			} else
				if (dbch->pdb_tr != db_tr)
					FUNC13("pdb_tr != db_tr\n");
			db_tr = FUNC4(db_tr, link);
			status = FUNC0(db_tr->db[0].db.desc.res)
						>> OHCI_STATUS_SHIFT;
			resCount = FUNC0(db_tr->db[0].db.desc.res)
						& OHCI_COUNT_MASK;
			/* XXX check buffer overrun */
			dbch->top = db_tr;
		} else {
			dbch->buf_offset = dbch->xferq.psize - resCount;
			break;
		}
		/* XXX make sure DMA is not dead */
	}
#if 0
	if (pcnt < 1)
		printf("fwohci_arcv: no packets\n");
#endif
	FUNC15(s);
	return;

err:
	FUNC7(sc->fc.dev, "AR DMA status=%x, ",
					FUNC2(sc, FUNC1(off)));
	dbch->pdb_tr = NULL;
	/* skip until resCount != 0 */
	FUNC13(" skip buffer");
	while (resCount == 0) {
		FUNC13(" #");
		FUNC10(sc, dbch, db_tr, off, 0);
		db_tr = FUNC4(db_tr, link);
		resCount = FUNC0(db_tr->db[0].db.desc.res)
						& OHCI_COUNT_MASK;
	}
	FUNC13(" done\n");
	dbch->top = db_tr;
	dbch->buf_offset = dbch->xferq.psize - resCount;
	FUNC3(sc, FUNC1(off), OHCI_CNTL_DMA_WAKE);
	FUNC15(s);
}