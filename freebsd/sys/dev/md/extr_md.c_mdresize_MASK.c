#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* vm_pindex_t ;
struct md_s {int type; int mediasize; int flags; int /*<<< orphan*/  pp; TYPE_1__* object; int /*<<< orphan*/  cred; } ;
struct md_req {int md_mediasize; int md_options; } ;
struct TYPE_6__ {void* size; void* charge; } ;

/* Variables and functions */
 int EDOM ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 void* FUNC0 (void*) ; 
#define  MD_NULL 130 
 int MD_RESERVE ; 
#define  MD_SWAP 129 
#define  MD_VNODE 128 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,void*,void*) ; 
 int FUNC9 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct md_s *sc, struct md_req *mdr)
{
	int error, res;
	vm_pindex_t oldpages, newpages;

	switch (sc->type) {
	case MD_VNODE:
	case MD_NULL:
		break;
	case MD_SWAP:
		if (mdr->md_mediasize <= 0 ||
		    (mdr->md_mediasize % PAGE_SIZE) != 0)
			return (EDOM);
		oldpages = FUNC1(FUNC7(sc->mediasize));
		newpages = FUNC1(FUNC7(mdr->md_mediasize));
		if (newpages < oldpages) {
			FUNC2(sc->object);
			FUNC12(sc->object, newpages, 0, 0);
			FUNC8(sc->object, newpages,
			    oldpages - newpages);
			FUNC10(FUNC0(oldpages -
			    newpages), sc->cred);
			sc->object->charge = FUNC0(newpages);
			sc->object->size = newpages;
			FUNC3(sc->object);
		} else if (newpages > oldpages) {
			res = FUNC11(FUNC0(newpages -
			    oldpages), sc->cred);
			if (!res)
				return (ENOMEM);
			if ((mdr->md_options & MD_RESERVE) ||
			    (sc->flags & MD_RESERVE)) {
				error = FUNC9(sc->object,
				    oldpages, newpages - oldpages);
				if (error < 0) {
					FUNC10(
					    FUNC0(newpages - oldpages),
					    sc->cred);
					return (EDOM);
				}
			}
			FUNC2(sc->object);
			sc->object->charge = FUNC0(newpages);
			sc->object->size = newpages;
			FUNC3(sc->object);
		}
		break;
	default:
		return (EOPNOTSUPP);
	}

	sc->mediasize = mdr->md_mediasize;
	FUNC5();
	FUNC4(sc->pp, sc->mediasize);
	FUNC6();
	return (0);
}