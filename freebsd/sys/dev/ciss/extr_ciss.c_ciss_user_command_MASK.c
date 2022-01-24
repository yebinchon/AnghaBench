#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ciss_softc {int /*<<< orphan*/  ciss_mtx; } ;
struct ciss_request {int /*<<< orphan*/ * cr_data; int /*<<< orphan*/  cr_length; struct ciss_command* cr_cc; } ;
struct ciss_error_info {int dummy; } ;
struct TYPE_4__ {int host_tag; int /*<<< orphan*/  address; } ;
struct ciss_command {TYPE_1__ header; int /*<<< orphan*/ * sg; int /*<<< orphan*/  cdb; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf_size; int /*<<< orphan*/  buf; int /*<<< orphan*/  error_info; struct ciss_error_info Request; struct ciss_error_info LUN_info; } ;
typedef  TYPE_2__ IOCTL_Command_struct ;

/* Variables and functions */
 int CISS_HDR_HOST_TAG_ERROR ; 
 int /*<<< orphan*/  CISS_MALLOC_CLASS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PPAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct ciss_error_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_error_info*,int) ; 
 scalar_t__ FUNC2 (struct ciss_softc*,struct ciss_request**) ; 
 int /*<<< orphan*/  FUNC3 (struct ciss_request*) ; 
 int FUNC4 (struct ciss_request*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ciss_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(struct ciss_softc *sc, IOCTL_Command_struct *ioc)
{
    struct ciss_request		*cr;
    struct ciss_command		*cc;
    struct ciss_error_info	*ce;
    int				error = 0;

    FUNC8(1);

    cr = NULL;

    /*
     * Get a request.
     */
    while (FUNC2(sc, &cr) != 0)
	FUNC11(sc, &sc->ciss_mtx, PPAUSE, "cissREQ", hz);
    cc = cr->cr_cc;

    /*
     * Allocate an in-kernel databuffer if required, copy in user data.
     */
    FUNC13(&sc->ciss_mtx);
    cr->cr_length = ioc->buf_size;
    if (ioc->buf_size > 0) {
	if ((cr->cr_data = FUNC10(ioc->buf_size, CISS_MALLOC_CLASS, M_NOWAIT)) == NULL) {
	    error = ENOMEM;
	    goto out_unlocked;
	}
	if ((error = FUNC5(ioc->buf, cr->cr_data, ioc->buf_size))) {
	    FUNC7(0, "copyin: bad data buffer %p/%d", ioc->buf, ioc->buf_size);
	    goto out_unlocked;
	}
    }

    /*
     * Build the request based on the user command.
     */
    FUNC0(&ioc->LUN_info, &cc->header.address, sizeof(cc->header.address));
    FUNC0(&ioc->Request, &cc->cdb, sizeof(cc->cdb));

    /* XXX anything else to populate here? */
    FUNC12(&sc->ciss_mtx);

    /*
     * Run the command.
     */
    if ((error = FUNC4(cr, 60 * 1000))) {
	FUNC7(0, "request failed - %d", error);
	goto out;
    }

    /*
     * Check to see if the command succeeded.
     */
    ce = (struct ciss_error_info *)&(cc->sg[0]);
    if ((cc->header.host_tag & CISS_HDR_HOST_TAG_ERROR) == 0)
	FUNC1(ce, sizeof(*ce));

    /*
     * Copy the results back to the user.
     */
    FUNC0(ce, &ioc->error_info, sizeof(*ce));
    FUNC13(&sc->ciss_mtx);
    if ((ioc->buf_size > 0) &&
	(error = FUNC6(cr->cr_data, ioc->buf, ioc->buf_size))) {
	FUNC7(0, "copyout: bad data buffer %p/%d", ioc->buf, ioc->buf_size);
	goto out_unlocked;
    }

    /* done OK */
    error = 0;

out_unlocked:
    FUNC12(&sc->ciss_mtx);

out:
    if ((cr != NULL) && (cr->cr_data != NULL))
	FUNC9(cr->cr_data, CISS_MALLOC_CLASS);
    if (cr != NULL)
	FUNC3(cr);
    return(error);
}