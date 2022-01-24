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
struct cryptop {int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {int crd_flags; int /*<<< orphan*/  crd_inject; } ;
struct cpl_fw6_pld {int /*<<< orphan*/ * data; } ;
struct ccr_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash_len; } ;
struct ccr_session {TYPE_1__ hmac; } ;
typedef  int /*<<< orphan*/  c_caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CRD_F_ENCRYPT ; 
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ccr_softc *sc, struct ccr_session *s,
    struct cryptop *crp, const struct cpl_fw6_pld *cpl, int error)
{
	struct cryptodesc *crd;

	/*
	 * The updated IV to permit chained requests is at
	 * cpl->data[2], but OCF doesn't permit chained requests.
	 *
	 * For a decryption request, the hardware may do a verification
	 * of the HMAC which will fail if the existing HMAC isn't in the
	 * buffer.  If that happens, clear the error and copy the HMAC
	 * from the CPL reply into the buffer.
	 *
	 * For encryption requests, crd should be the cipher request
	 * which will have CRD_F_ENCRYPT set.  For decryption
	 * requests, crp_desc will be the HMAC request which should
	 * not have this flag set.
	 */
	crd = crp->crp_desc;
	if (error == EBADMSG && !FUNC0(FUNC1(cpl->data[0])) &&
	    !(crd->crd_flags & CRD_F_ENCRYPT)) {
		FUNC2(crp->crp_flags, crp->crp_buf, crd->crd_inject,
		    s->hmac.hash_len, (c_caddr_t)(cpl + 1));
		error = 0;
	}
	return (error);
}