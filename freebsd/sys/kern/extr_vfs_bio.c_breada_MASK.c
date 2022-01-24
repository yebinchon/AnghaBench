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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ru_inblock; } ;
struct thread {TYPE_1__ td_ru; } ;
struct buf {int b_flags; void (* b_ckhashcalc ) (struct buf*) ;int /*<<< orphan*/  b_blkno; int /*<<< orphan*/  b_iooffset; struct ucred* b_rcred; int /*<<< orphan*/  b_iocmd; int /*<<< orphan*/  b_ioflags; } ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  BIO_READ ; 
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int B_ASYNC ; 
 int B_CACHE ; 
 int B_CKHASH ; 
 int B_INVAL ; 
 int GB_CKHASH ; 
 struct ucred* NOCRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 struct ucred* FUNC5 (struct ucred*) ; 
 int /*<<< orphan*/  curproc ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct buf* FUNC7 (struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  FUNC10 (struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct vnode * vp, daddr_t * rablkno, int * rabsize, int cnt,
    struct ucred * cred, int flags, void (*ckhashfunc)(struct buf *))
{
	struct buf *rabp;
	struct thread *td;
	int i;

	td = curthread;

	for (i = 0; i < cnt; i++, rablkno++, rabsize++) {
		if (FUNC8(vp, *rablkno))
			continue;
		rabp = FUNC7(vp, *rablkno, *rabsize, 0, 0, 0);
		if ((rabp->b_flags & B_CACHE) != 0) {
			FUNC3(rabp);
			continue;
		}
#ifdef RACCT
		if (racct_enable) {
			PROC_LOCK(curproc);
			racct_add_buf(curproc, rabp, 0);
			PROC_UNLOCK(curproc);
		}
#endif /* RACCT */
		td->td_ru.ru_inblock++;
		rabp->b_flags |= B_ASYNC;
		rabp->b_flags &= ~B_INVAL;
		if ((flags & GB_CKHASH) != 0) {
			rabp->b_flags |= B_CKHASH;
			rabp->b_ckhashcalc = ckhashfunc;
		}
		rabp->b_ioflags &= ~BIO_ERROR;
		rabp->b_iocmd = BIO_READ;
		if (rabp->b_rcred == NOCRED && cred != NOCRED)
			rabp->b_rcred = FUNC5(cred);
		FUNC10(rabp, 0);
		FUNC0(rabp);
		rabp->b_iooffset = FUNC6(rabp->b_blkno);
		FUNC4(rabp);
	}
}