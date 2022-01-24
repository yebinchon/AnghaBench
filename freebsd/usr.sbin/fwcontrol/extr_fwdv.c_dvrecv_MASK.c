#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wbuf ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct iovec {char* iov_base; int iov_len; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_8__ {TYPE_1__ stream; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct TYPE_10__ {scalar_t__ psize; scalar_t__ npacket; scalar_t__ nchunk; } ;
struct TYPE_9__ {int npacket; int psize; int /*<<< orphan*/  nchunk; } ;
struct fw_isochreq {char ch; char tag; TYPE_4__ tx; TYPE_3__ rx; } ;
struct fw_isobufreq {char ch; char tag; TYPE_4__ tx; TYPE_3__ rx; } ;
struct dvdbc {int sct; int dseq; int* payload; } ;
struct TYPE_11__ {int cyc; int fs; } ;
struct TYPE_12__ {TYPE_5__ dv; } ;
struct ciphdr {scalar_t__ fmt; int len; TYPE_6__ fdf; } ;

/* Variables and functions */
 scalar_t__ CIP_FMT_DVCR ; 
 int DSIZE ; 
 int DV_DSF_12 ; 
 scalar_t__ DV_SCT_HEADER ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  FW_SRSTREAM ; 
 int /*<<< orphan*/  FW_SSTBUF ; 
 int MAXBLOCKS ; 
 int /*<<< orphan*/  NCHUNK ; 
 int NPACKET_R ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PSIZE ; 
 int RBUFSIZE ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (struct iovec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int* frame_rate ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,struct fw_isochreq*) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (char const*,int,int) ; 
 int FUNC12 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 char** system_name ; 
 int /*<<< orphan*/  FUNC14 (int,struct iovec*,int) ; 

void
FUNC15(int d, const char *filename, char ich, int count)
{
	struct fw_isochreq isoreq;
	struct fw_isobufreq bufreq;
	struct dvdbc *dv;
	struct ciphdr *ciph;
	struct fw_pkt *pkt;
	char *pad, *buf;
	u_int32_t *ptr;
	int len, tlen, npad, fd, k, m, vec, system = -1, nb;
	int nblocks[] = {250 /* NTSC */, 300 /* PAL */};
	struct iovec wbuf[NPACKET_R];

	if(FUNC13(filename, "-") == 0) {
		fd = STDOUT_FILENO;
	} else {
		fd = FUNC11(filename, O_CREAT | O_WRONLY | O_TRUNC, 0660);
		if (fd == -1)
			FUNC2(EX_NOINPUT, "%s", filename);
	}
	buf = FUNC8(RBUFSIZE);
	pad = FUNC8(DSIZE*MAXBLOCKS);
	FUNC9(pad, 0xff, DSIZE*MAXBLOCKS);
	FUNC0(wbuf, sizeof(wbuf));

	bufreq.rx.nchunk = NCHUNK;
	bufreq.rx.npacket = NPACKET_R;
	bufreq.rx.psize = PSIZE;
	bufreq.tx.nchunk = 0;
	bufreq.tx.npacket = 0;
	bufreq.tx.psize = 0;
	if (FUNC7(d, FW_SSTBUF, &bufreq) < 0)
		FUNC2(1, "ioctl FW_SSTBUF");

	isoreq.ch = ich & 0x3f;
	isoreq.tag = (ich >> 6) & 3;

	if (FUNC7(d, FW_SRSTREAM, &isoreq) < 0)
       		FUNC2(1, "ioctl");

	k = m = 0;
	while (count <= 0 || k <= count) {
#if 0
		tlen = 0;
		while ((len = read(d, buf + tlen, PSIZE
						/* RBUFSIZE - tlen */)) > 0) {
			if (len < 0) {
				if (errno == EAGAIN) {
					fprintf(stderr, "(EAGAIN)\n");
					fflush(stderr);
					if (len <= 0)
						continue;
				} else
					err(1, "read failed");
			}
			tlen += len;
			if ((RBUFSIZE - tlen) < PSIZE)
				break;
		};
#else
		tlen = len = FUNC12(d, buf, RBUFSIZE);
		if (len < 0) {
			if (errno == EAGAIN) {
				FUNC5(stderr, "(EAGAIN) - push 'Play'?\n");
				FUNC4(stderr);
				if (len <= 0)
					continue;
			} else
				FUNC2(1, "read failed");
		}
#endif
		vec = 0;
		ptr = (u_int32_t *) buf;
again:
		pkt = (struct fw_pkt *) ptr;
#if DEBUG
		fprintf(stderr, "%08x %08x %08x %08x\n",
			htonl(ptr[0]), htonl(ptr[1]),
			htonl(ptr[2]), htonl(ptr[3]));
#endif
		ciph = (struct ciphdr *)(ptr + 1);	/* skip iso header */
		if (ciph->fmt != CIP_FMT_DVCR)
			FUNC3(1, "unknown format 0x%x", ciph->fmt);
		ptr = (u_int32_t *) (ciph + 1);		/* skip cip header */
#if DEBUG
		if (ciph->fdf.dv.cyc != 0xffff && k == 0) {
			fprintf(stderr, "0x%04x\n", ntohs(ciph->fdf.dv.cyc));
		}
#endif
		if (pkt->mode.stream.len <= sizeof(struct ciphdr))
			/* no payload */
			goto next;
		for (dv = (struct dvdbc *)ptr;
				(char *)dv < (char *)(ptr + ciph->len);
				dv+=6) {

#if DEBUG
			fprintf(stderr, "(%d,%d) ", dv->sct, dv->dseq);
#endif
			if  (dv->sct == DV_SCT_HEADER && dv->dseq == 0) {
				if (system < 0) {
					system = ciph->fdf.dv.fs;
					FUNC5(stderr, "%s\n", system_name[system]);
				}

				/* Fix DSF bit */
				if (system == 1 &&
					(dv->payload[0] & DV_DSF_12) == 0)
					dv->payload[0] |= DV_DSF_12;
				nb = nblocks[system];
 				FUNC5(stderr, "%d:%02d:%02d %d\r",
					k / (3600 * frame_rate[system]),
					(k / (60 * frame_rate[system])) % 60,
					(k / frame_rate[system]) % 60,
					k % frame_rate[system]);

#if FIX_FRAME
				if (m > 0 && m != nb) {
					/* padding bad frame */
					npad = ((nb - m) % nb);
					if (npad < 0)
						npad += nb;
					fprintf(stderr, "\n%d blocks padded\n",
					    npad);
					npad *= DSIZE;
					wbuf[vec].iov_base = pad;
					wbuf[vec++].iov_len = npad;
					if (vec >= NPACKET_R) {
						writev(fd, wbuf, vec);
						vec = 0;
					}
				}
#endif
				k++;
				FUNC4(stderr);
				m = 0;
			}
			if (k == 0 || (count > 0 && k > count))
				continue;
			m++;
			wbuf[vec].iov_base = (char *) dv;
			wbuf[vec++].iov_len = DSIZE;
			if (vec >= NPACKET_R) {
				FUNC14(fd, wbuf, vec);
				vec = 0;
			}
		}
		ptr = (u_int32_t *)dv;
next:
		if ((char *)ptr < buf + tlen)
			goto again;
		if (vec > 0)
			FUNC14(fd, wbuf, vec);
	}
	if (fd != STDOUT_FILENO)
		FUNC1(fd);
	FUNC5(stderr, "\n");
}