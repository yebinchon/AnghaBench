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
struct bio {int bio_cmd; int bio_bcount; scalar_t__ bio_pblkno; TYPE_1__* bio_disk; int /*<<< orphan*/ * bio_dev; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  scalar_t__ daddr_t ;
struct TYPE_2__ {char* d_name; char* d_unit; } ;

/* Variables and functions */
#define  BIO_DELETE 132 
#define  BIO_FLUSH 131 
#define  BIO_GETATTR 130 
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int DEV_BSIZE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(struct bio *bp, const char *what, int blkdone, int nl)
{
	daddr_t sn;

	if (bp->bio_dev != NULL)
		FUNC1("%s: %s ", FUNC0(bp->bio_dev), what);
	else if (bp->bio_disk != NULL)
		FUNC1("%s%d: %s ",
		    bp->bio_disk->d_name, bp->bio_disk->d_unit, what);
	else
		FUNC1("disk??: %s ", what);
	switch(bp->bio_cmd) {
	case BIO_READ:		FUNC1("cmd=read "); break;
	case BIO_WRITE:		FUNC1("cmd=write "); break;
	case BIO_DELETE:	FUNC1("cmd=delete "); break;
	case BIO_GETATTR:	FUNC1("cmd=getattr "); break;
	case BIO_FLUSH:		FUNC1("cmd=flush "); break;
	default:		FUNC1("cmd=%x ", bp->bio_cmd); break;
	}
	sn = bp->bio_pblkno;
	if (bp->bio_bcount <= DEV_BSIZE) {
		FUNC1("fsbn %jd%s", (intmax_t)sn, nl ? "\n" : "");
		return;
	}
	if (blkdone >= 0) {
		sn += blkdone;
		FUNC1("fsbn %jd of ", (intmax_t)sn);
	}
	FUNC1("%jd-%jd", (intmax_t)bp->bio_pblkno,
	    (intmax_t)(bp->bio_pblkno + (bp->bio_bcount - 1) / DEV_BSIZE));
	if (nl)
		FUNC1("\n");
}