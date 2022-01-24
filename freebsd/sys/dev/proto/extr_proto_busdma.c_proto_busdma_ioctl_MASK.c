#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct proto_tag {int dummy; } ;
struct proto_softc {int /*<<< orphan*/  sc_dev; } ;
struct proto_md {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tag; } ;
struct TYPE_4__ {TYPE_1__ md; } ;
struct proto_ioc_busdma {int request; int /*<<< orphan*/  key; TYPE_2__ u; } ;
struct proto_busdma {int /*<<< orphan*/  sxlck; int /*<<< orphan*/  bd_roottag; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PROTO_IOC_BUSDMA_MD_CREATE 137 
#define  PROTO_IOC_BUSDMA_MD_DESTROY 136 
#define  PROTO_IOC_BUSDMA_MD_LOAD 135 
#define  PROTO_IOC_BUSDMA_MD_UNLOAD 134 
#define  PROTO_IOC_BUSDMA_MEM_ALLOC 133 
#define  PROTO_IOC_BUSDMA_MEM_FREE 132 
#define  PROTO_IOC_BUSDMA_SYNC 131 
#define  PROTO_IOC_BUSDMA_TAG_CREATE 130 
#define  PROTO_IOC_BUSDMA_TAG_DERIVE 129 
#define  PROTO_IOC_BUSDMA_TAG_DESTROY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct proto_busdma*,struct proto_tag*,struct proto_ioc_busdma*) ; 
 int FUNC2 (struct proto_busdma*,struct proto_md*) ; 
 int FUNC3 (struct proto_busdma*,struct proto_md*,struct proto_ioc_busdma*,struct thread*) ; 
 struct proto_md* FUNC4 (struct proto_busdma*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct proto_busdma*,struct proto_md*) ; 
 int FUNC6 (struct proto_busdma*,struct proto_tag*,struct proto_ioc_busdma*) ; 
 int FUNC7 (struct proto_busdma*,struct proto_md*) ; 
 int FUNC8 (struct proto_busdma*,struct proto_md*,struct proto_ioc_busdma*) ; 
 int FUNC9 (struct proto_busdma*,struct proto_tag*,struct proto_ioc_busdma*) ; 
 int FUNC10 (struct proto_busdma*,struct proto_tag*) ; 
 struct proto_tag* FUNC11 (struct proto_busdma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(struct proto_softc *sc, struct proto_busdma *busdma,
    struct proto_ioc_busdma *ioc, struct thread *td)
{
	struct proto_tag *tag;
	struct proto_md *md;
	int error;

	FUNC12(&busdma->sxlck);

	error = 0;
	switch (ioc->request) {
	case PROTO_IOC_BUSDMA_TAG_CREATE:
		busdma->bd_roottag = FUNC0(sc->sc_dev);
		error = FUNC9(busdma, NULL, ioc);
		break;
	case PROTO_IOC_BUSDMA_TAG_DERIVE:
		tag = FUNC11(busdma, ioc->key);
		if (tag == NULL) {
			error = EINVAL;
			break;
		}
		error = FUNC9(busdma, tag, ioc);
		break;
	case PROTO_IOC_BUSDMA_TAG_DESTROY:
		tag = FUNC11(busdma, ioc->key);
		if (tag == NULL) {
			error = EINVAL;
			break;
		}
		error = FUNC10(busdma, tag);
		break;
	case PROTO_IOC_BUSDMA_MEM_ALLOC:
		tag = FUNC11(busdma, ioc->u.md.tag);
		if (tag == NULL) {
			error = EINVAL;
			break;
		}
		error = FUNC6(busdma, tag, ioc);
		break;
	case PROTO_IOC_BUSDMA_MEM_FREE:
		md = FUNC4(busdma, ioc->key);
		if (md == NULL) {
			error = EINVAL;
			break;
		}
		error = FUNC7(busdma, md);
		break;
	case PROTO_IOC_BUSDMA_MD_CREATE:
		tag = FUNC11(busdma, ioc->u.md.tag);
		if (tag == NULL) {
			error = EINVAL;
			break;
		}
		error = FUNC1(busdma, tag, ioc);
		break;
	case PROTO_IOC_BUSDMA_MD_DESTROY:
		md = FUNC4(busdma, ioc->key);
		if (md == NULL) {
			error = EINVAL;
			break;
		}
		error = FUNC2(busdma, md);
		break;
	case PROTO_IOC_BUSDMA_MD_LOAD:
		md = FUNC4(busdma, ioc->key);
		if (md == NULL) {
			error = EINVAL;
			break;
		}
		error = FUNC3(busdma, md, ioc, td);
		break;
	case PROTO_IOC_BUSDMA_MD_UNLOAD:
		md = FUNC4(busdma, ioc->key);
		if (md == NULL) {
			error = EINVAL;
			break;
		}
		error = FUNC5(busdma, md);
		break;
	case PROTO_IOC_BUSDMA_SYNC:
		md = FUNC4(busdma, ioc->key);
		if (md == NULL) {
			error = EINVAL;
			break;
		}
		error = FUNC8(busdma, md, ioc);
		break;
	default:
		error = EINVAL;
		break;
	}

	FUNC13(&busdma->sxlck);

	return (error);
}