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
struct vtblk_softc {int /*<<< orphan*/  vtblk_dev; struct disk* vtblk_disk; } ;
struct TYPE_2__ {int ioprio; scalar_t__ sector; int /*<<< orphan*/  type; } ;
struct vtblk_request {int vbr_ack; struct bio* vbr_bp; TYPE_1__ vbr_hdr; } ;
struct disk {int /*<<< orphan*/  d_ident; } ;
struct bio {int bio_bcount; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_READ ; 
 int /*<<< orphan*/  DISK_IDENT_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTIO_BLK_ID_BYTES ; 
 int /*<<< orphan*/  VIRTIO_BLK_T_GET_ID ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  vtblk_no_ident ; 
 int FUNC5 (struct vtblk_softc*,struct vtblk_request*) ; 
 struct vtblk_request* FUNC6 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vtblk_softc*,struct vtblk_request*) ; 
 scalar_t__ FUNC8 (struct vtblk_softc*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct vtblk_softc *sc)
{
	struct bio buf;
	struct disk *dp;
	struct vtblk_request *req;
	int len, error;

	dp = sc->vtblk_disk;
	len = FUNC0(VIRTIO_BLK_ID_BYTES, DISK_IDENT_SIZE);

	if (FUNC8(sc, "no_ident", vtblk_no_ident) != 0)
		return;

	req = FUNC6(sc);
	if (req == NULL)
		return;

	req->vbr_ack = -1;
	req->vbr_hdr.type = VIRTIO_BLK_T_GET_ID;
	req->vbr_hdr.ioprio = 1;
	req->vbr_hdr.sector = 0;

	req->vbr_bp = &buf;
	FUNC4(&buf);

	buf.bio_cmd = BIO_READ;
	buf.bio_data = dp->d_ident;
	buf.bio_bcount = len;

	FUNC1(sc);
	error = FUNC5(sc, req);
	FUNC2(sc);

	FUNC7(sc, req);

	if (error) {
		FUNC3(sc->vtblk_dev,
		    "error getting device identifier: %d\n", error);
	}
}