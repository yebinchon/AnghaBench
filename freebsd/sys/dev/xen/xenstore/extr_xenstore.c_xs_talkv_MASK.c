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
typedef  size_t u_int ;
struct xsd_sockmsg {int type; scalar_t__ len; scalar_t__ req_id; int /*<<< orphan*/  tx_id; } ;
struct xs_transaction {int /*<<< orphan*/  id; } ;
struct iovec {int iov_len; struct xsd_sockmsg* iov_base; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  enum xsd_sockmsg_type { ____Placeholder_xsd_sockmsg_type } xsd_sockmsg_type ;
struct TYPE_2__ {int /*<<< orphan*/  request_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_XENSTORE ; 
 scalar_t__ XS_ERROR ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ xs ; 
 int FUNC5 (void*) ; 
 int FUNC6 (int*,size_t*,void**) ; 
 int FUNC7 (struct xsd_sockmsg*,int) ; 

__attribute__((used)) static int
FUNC8(struct xs_transaction t, enum xsd_sockmsg_type request_type,
    const struct iovec *iovec, u_int num_vecs, u_int *len, void **result)
{
	struct xsd_sockmsg msg;
	void *ret = NULL;
	u_int i;
	int error;

	msg.tx_id = t.id;
	msg.req_id = 0;
	msg.type = request_type;
	msg.len = 0;
	for (i = 0; i < num_vecs; i++)
		msg.len += iovec[i].iov_len;

	FUNC3(&xs.request_mutex);
	error = FUNC7(&msg, sizeof(msg));
	if (error) {
		FUNC2("xs_talkv failed %d\n", error);
		goto error_lock_held;
	}

	for (i = 0; i < num_vecs; i++) {
		error = FUNC7(iovec[i].iov_base, iovec[i].iov_len);
		if (error) {
			FUNC2("xs_talkv failed %d\n", error);
			goto error_lock_held;
		}
	}

	error = FUNC6(&msg.type, len, &ret);

error_lock_held:
	FUNC4(&xs.request_mutex);
	if (error)
		return (error);

	if (msg.type == XS_ERROR) {
		error = FUNC5(ret);
		FUNC1(ret, M_XENSTORE);
		return (error);
	}

	/* Reply is either error or an echo of our request message type. */
	FUNC0(msg.type == request_type, ("bad xenstore message type"));

	if (result)
		*result = ret;
	else
		FUNC1(ret, M_XENSTORE);

	return (0);
}