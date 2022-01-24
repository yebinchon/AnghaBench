#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_paddr_t ;
struct uio {int uio_iovcnt; int uio_offset; int /*<<< orphan*/  uio_resid; void* uio_td; void* uio_rw; void* uio_segflg; struct iovec* uio_iov; } ;
struct iovec {char* iov_base; int /*<<< orphan*/  iov_len; } ;
struct g_spa {int spa_g_proc_exiting; int /*<<< orphan*/  spa_g_devstat; TYPE_1__* dev; int /*<<< orphan*/  spa_g_mtx; int /*<<< orphan*/  spa_g_queue; int /*<<< orphan*/  spa_g_proc_run; } ;
struct bio {scalar_t__ bio_cmd; int bio_flags; int bio_offset; char* bio_data; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_completed; int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_resid; int /*<<< orphan*/  bio_ma_offset; int /*<<< orphan*/  bio_ma; } ;
struct TYPE_3__ {int /*<<< orphan*/ * spa_kva; int /*<<< orphan*/  spa_memattr; scalar_t__ spa_len; scalar_t__ spa_phys_base; } ;

/* Variables and functions */
 scalar_t__ BIO_FLUSH ; 
 scalar_t__ BIO_READ ; 
 int BIO_UNMAPPED ; 
 scalar_t__ BIO_WRITE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  PRIBIO ; 
 void* UIO_READ ; 
 void* UIO_SYSSPACE ; 
 void* UIO_WRITE ; 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 void* curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct bio*,scalar_t__) ; 
 int FUNC8 (TYPE_1__*,struct uio*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct g_spa *sc;
	struct bio *bp;
	struct uio auio;
	struct iovec aiovec;
	int error;

	sc = arg;
	for (;;) {
		FUNC5(&sc->spa_g_mtx);
		for (;;) {
			bp = FUNC0(&sc->spa_g_queue);
			if (bp != NULL)
				break;
			FUNC4(&sc->spa_g_queue, &sc->spa_g_mtx, PRIBIO,
			    "spa_g", 0);
			if (!sc->spa_g_proc_run) {
				sc->spa_g_proc_exiting = true;
				FUNC12(&sc->spa_g_queue);
				FUNC6(&sc->spa_g_mtx);
				FUNC3(0);
			}
			continue;
		}
		FUNC6(&sc->spa_g_mtx);
		if (bp->bio_cmd != BIO_READ && bp->bio_cmd != BIO_WRITE &&
		    bp->bio_cmd != BIO_FLUSH) {
			error = EOPNOTSUPP;
			goto completed;
		}

		error = 0;
		if (bp->bio_cmd == BIO_FLUSH) {
			if (sc->dev->spa_kva != NULL) {
				FUNC10(sc->dev->spa_kva,
				    sc->dev->spa_len);
			} else {
				FUNC9(
				    (vm_paddr_t)sc->dev->spa_phys_base,
				    (vm_paddr_t)sc->dev->spa_phys_base +
				    sc->dev->spa_len, sc->dev->spa_memattr);
			}
			/*
			 * XXX flush IMC
			 */
			goto completed;
		}
		
		if ((bp->bio_flags & BIO_UNMAPPED) != 0) {
			if (sc->dev->spa_kva != NULL) {
				aiovec.iov_base = (char *)sc->dev->spa_kva +
				    bp->bio_offset;
				aiovec.iov_len = bp->bio_length;
				auio.uio_iov = &aiovec;
				auio.uio_iovcnt = 1;
				auio.uio_resid = bp->bio_length;
				auio.uio_offset = bp->bio_offset;
				auio.uio_segflg = UIO_SYSSPACE;
				auio.uio_rw = bp->bio_cmd == BIO_READ ?
				    UIO_WRITE : UIO_READ;
				auio.uio_td = curthread;
				error = FUNC11(bp->bio_ma,
				    bp->bio_ma_offset, bp->bio_length, &auio);
				bp->bio_resid = auio.uio_resid;
			} else {
				FUNC7(sc->dev, bp,
				    bp->bio_cmd);
				bp->bio_resid = bp->bio_length;
				error = 0;
			}
		} else {
			aiovec.iov_base = bp->bio_data;
			aiovec.iov_len = bp->bio_length;
			auio.uio_iov = &aiovec;
			auio.uio_iovcnt = 1;
			auio.uio_resid = bp->bio_length;
			auio.uio_offset = bp->bio_offset;
			auio.uio_segflg = UIO_SYSSPACE;
			auio.uio_rw = bp->bio_cmd == BIO_READ ? UIO_READ :
			    UIO_WRITE;
			auio.uio_td = curthread;
			error = FUNC8(sc->dev, &auio);
			bp->bio_resid = auio.uio_resid;
		}
		bp->bio_bcount = bp->bio_length;
		FUNC1(sc->spa_g_devstat, bp);
completed:
		bp->bio_completed = bp->bio_length;
		FUNC2(bp, error);
	}
}