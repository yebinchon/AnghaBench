#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_1__* vm_object_t ;
struct shmfd {int shm_size; int shm_seals; scalar_t__ shm_kmappings; int /*<<< orphan*/  shm_ctime; int /*<<< orphan*/  shm_mtime; TYPE_1__* shm_object; } ;
typedef  int off_t ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ type; int /*<<< orphan*/  charge; int /*<<< orphan*/  cred; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 int F_SEAL_GROW ; 
 int F_SEAL_SHRINK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ OBJT_SWAP ; 
 scalar_t__ FUNC3 (int) ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  VM_ALLOC_NOCREAT ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WAITFAIL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int VM_PAGER_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shm_timestamp_lock ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_1__*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC25(struct shmfd *shmfd, off_t length, void *rl_cookie)
{
	vm_object_t object;
	vm_page_t m;
	vm_pindex_t idx, nobjsize;
	vm_ooffset_t delta;
	int base, rv;

	FUNC1(length >= 0, ("shm_dotruncate: length < 0"));
	object = shmfd->shm_object;
	FUNC4(object);
	FUNC9(rl_cookie, RA_WLOCKED);
	if (length == shmfd->shm_size)
		return (0);
	nobjsize = FUNC3(length + PAGE_MASK);

	/* Are we shrinking?  If so, trim the end. */
	if (length < shmfd->shm_size) {
		if ((shmfd->shm_seals & F_SEAL_SHRINK) != 0)
			return (EPERM);

		/*
		 * Disallow any requests to shrink the size if this
		 * object is mapped into the kernel.
		 */
		if (shmfd->shm_kmappings > 0)
			return (EBUSY);

		/*
		 * Zero the truncated part of the last page.
		 */
		base = length & PAGE_MASK;
		if (base != 0) {
			idx = FUNC3(length);
retry:
			m = FUNC19(object, idx, VM_ALLOC_NOCREAT);
			if (m != NULL) {
				FUNC2(FUNC15(m));
			} else if (FUNC23(object, idx, NULL, NULL)) {
				m = FUNC16(object, idx,
				    VM_ALLOC_NORMAL | VM_ALLOC_WAITFAIL);
				if (m == NULL)
					goto retry;
				rv = FUNC22(object, &m, 1, NULL,
				    NULL);
				if (rv == VM_PAGER_OK) {
					/*
					 * Since the page was not resident,
					 * and therefore not recently
					 * accessed, immediately enqueue it
					 * for asynchronous laundering.  The
					 * current operation is not regarded
					 * as an access.
					 */
					FUNC20(m);
				} else {
					FUNC18(m);
					FUNC5(object);
					return (EIO);
				}
			}
			if (m != NULL) {
				FUNC8(m, base, PAGE_SIZE - base);
				FUNC1(FUNC15(m),
				    ("shm_dotruncate: page %p is invalid", m));
				FUNC17(m);
				FUNC21(m);
				FUNC24(m);
			}
		}
		delta = FUNC0(object->size - nobjsize);

		/* Toss in memory pages. */
		if (nobjsize < object->size)
			FUNC14(object, nobjsize, object->size,
			    0);

		/* Toss pages from swap. */
		if (object->type == OBJT_SWAP)
			FUNC10(object, nobjsize, delta);

		/* Free the swap accounted for shm */
		FUNC11(delta, object->cred);
		object->charge -= delta;
	} else {
		if ((shmfd->shm_seals & F_SEAL_GROW) != 0)
			return (EPERM);

		/* Try to reserve additional swap space. */
		delta = FUNC0(nobjsize - object->size);
		if (!FUNC12(delta, object->cred))
			return (ENOMEM);
		object->charge += delta;
	}
	shmfd->shm_size = length;
	FUNC6(&shm_timestamp_lock);
	FUNC13(&shmfd->shm_ctime);
	shmfd->shm_mtime = shmfd->shm_ctime;
	FUNC7(&shm_timestamp_lock);
	object->size = nobjsize;
	return (0);
}