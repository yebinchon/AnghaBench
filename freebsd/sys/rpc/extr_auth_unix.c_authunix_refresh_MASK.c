#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct xucred {int dummy; } ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_11__ {scalar_t__ oa_base; int /*<<< orphan*/  oa_length; } ;
struct audata {TYPE_1__ au_origcred; int /*<<< orphan*/  au_shfaults; } ;
typedef  int bool_t ;
struct TYPE_12__ {int /*<<< orphan*/  x_op; } ;
typedef  TYPE_2__ XDR ;
struct TYPE_13__ {TYPE_1__ ah_cred; } ;
typedef  TYPE_3__ AUTH ;

/* Variables and functions */
 struct audata* FUNC0 (TYPE_3__*) ; 
 int FALSE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,struct xucred*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t
FUNC7(AUTH *auth, void *dummy)
{
	struct audata *au = FUNC0(auth);
	struct xucred xcr;
	uint32_t time;
	struct timeval now;
	XDR xdrs;
	int stat;

	if (auth->ah_cred.oa_base == au->au_origcred.oa_base) {
		/* there is no hope.  Punt */
		return (FALSE);
	}
	au->au_shfaults ++;

	/* first deserialize the creds back into a struct ucred */
	FUNC6(&xdrs, au->au_origcred.oa_base,
	    au->au_origcred.oa_length, XDR_DECODE);
	stat = FUNC5(&xdrs, &time, &xcr);
	if (! stat)
		goto done;

	/* update the time and serialize in place */
	FUNC3(&now);
	time = now.tv_sec;
	xdrs.x_op = XDR_ENCODE;
	FUNC2(&xdrs, 0);

	stat = FUNC5(&xdrs, &time, &xcr);
	if (! stat)
		goto done;
	auth->ah_cred = au->au_origcred;
	FUNC4(auth);
done:
	FUNC1(&xdrs);
	return (stat);
}