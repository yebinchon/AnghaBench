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
typedef  void* uint64_t ;
typedef  int uint32_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct nvme_io_test_internal {scalar_t__ size; scalar_t__ opc; int flags; scalar_t__ time; int /*<<< orphan*/  td_active; void** io_completed; TYPE_1__* ns; int /*<<< orphan*/  start; int /*<<< orphan*/  td_idx; } ;
struct mtx {int dummy; } ;
struct cdevsw {int /*<<< orphan*/  (* d_strategy ) (struct bio*) ;} ;
struct cdev {struct cdevsw* si_devsw; } ;
struct bio {scalar_t__ bio_bcount; int bio_flags; scalar_t__ bio_resid; void* bio_data; void* bio_offset; struct cdev* bio_dev; int /*<<< orphan*/  bio_done; int /*<<< orphan*/  bio_cmd; } ;
struct TYPE_3__ {struct cdev* cdev; } ;

/* Variables and functions */
 int BIO_ERROR ; 
 int /*<<< orphan*/  BIO_READ ; 
 int /*<<< orphan*/  BIO_WRITE ; 
 int /*<<< orphan*/  M_NVME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ NVME_OPC_READ ; 
 int NVME_TEST_FLAG_REFTHREAD ; 
 int /*<<< orphan*/  PRIBIO ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct cdevsw* FUNC2 (struct cdev*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct bio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct bio*,struct mtx*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mtx*) ; 
 struct mtx* FUNC14 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC15 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 
 int /*<<< orphan*/  nvme_ns_bio_test_cb ; 
 int FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (struct bio*) ; 
 int /*<<< orphan*/  FUNC19 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct nvme_io_test_internal*) ; 

__attribute__((used)) static void
FUNC21(void *arg)
{
	struct nvme_io_test_internal	*io_test = arg;
	struct cdevsw			*csw;
	struct mtx			*mtx;
	struct bio			*bio;
	struct cdev			*dev;
	void				*buf;
	struct timeval			t;
	uint64_t			io_completed = 0, offset;
	uint32_t			idx;
	int				ref;

	buf = FUNC9(io_test->size, M_NVME, M_WAITOK);
	idx = FUNC0(&io_test->td_idx, 1);
	dev = io_test->ns->cdev;

	offset = idx * 2048 * FUNC16(io_test->ns);

	while (1) {

		bio = FUNC5();

		FUNC11(bio, 0, sizeof(*bio));
		bio->bio_cmd = (io_test->opc == NVME_OPC_READ) ?
		    BIO_READ : BIO_WRITE;
		bio->bio_done = nvme_ns_bio_test_cb;
		bio->bio_dev = dev;
		bio->bio_offset = offset;
		bio->bio_data = buf;
		bio->bio_bcount = io_test->size;

		if (io_test->flags & NVME_TEST_FLAG_REFTHREAD) {
			csw = FUNC2(dev, &ref);
		} else
			csw = dev->si_devsw;

		mtx = FUNC14(mtxpool_sleep, bio);
		FUNC13(mtx);
		(*csw->d_strategy)(bio);
		FUNC12(bio, mtx, PRIBIO, "biotestwait", 0);
		FUNC15(mtx);

		if (io_test->flags & NVME_TEST_FLAG_REFTHREAD) {
			FUNC3(dev, ref);
		}

		if ((bio->bio_flags & BIO_ERROR) || (bio->bio_resid > 0))
			break;

		FUNC6(bio);

		io_completed++;

		FUNC7(&t);
		FUNC19(&t, &io_test->start);

		if (t.tv_sec >= io_test->time)
			break;

		offset += io_test->size;
		if ((offset + io_test->size) > FUNC17(io_test->ns))
			offset = 0;
	}

	io_test->io_completed[idx] = io_completed;
	FUNC20(io_test);

	FUNC4(buf, M_NVME);

	FUNC1(&io_test->td_active, 1);
	FUNC10();

	FUNC8();
}