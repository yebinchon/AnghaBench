#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nmreq_vale_polling {int dummy; } ;
struct nmreq_header {scalar_t__ nr_reqtype; scalar_t__ nr_body; } ;
struct netmap_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ NETMAP_BDG_POLLING_ON ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_adapter*) ; 
 int FUNC4 (struct nmreq_header*,struct netmap_adapter**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nmreq_vale_polling*,struct netmap_adapter*) ; 
 int FUNC6 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct netmap_adapter*) ; 

int
FUNC8(struct nmreq_header *hdr)
{
	struct nmreq_vale_polling *req =
		(struct nmreq_vale_polling *)(uintptr_t)hdr->nr_body;
	struct netmap_adapter *na = NULL;
	int error = 0;

	FUNC0();
	error = FUNC4(hdr, &na, NULL, /*create=*/0);
	if (na && !error) {
		if (!FUNC7(na)) {
			error = EOPNOTSUPP;
		} else if (hdr->nr_reqtype == NETMAP_BDG_POLLING_ON) {
			error = FUNC5(req, na);
			if (!error)
				FUNC2(na);
		} else {
			error = FUNC6(na);
			if (!error)
				FUNC3(na);
		}
		FUNC3(na);
	} else if (!na && !error) {
		/* Not VALE port. */
		error = EINVAL;
	}
	FUNC1();

	return error;
}