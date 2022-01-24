#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_6__ {char* body; } ;
struct TYPE_7__ {TYPE_2__ reply; } ;
struct TYPE_5__ {int type; int /*<<< orphan*/  len; } ;
struct xs_stored_msg {TYPE_3__ u; TYPE_1__ hdr; } ;
typedef  enum xsd_sockmsg_type { ____Placeholder_xsd_sockmsg_type } xsd_sockmsg_type ;
struct TYPE_8__ {int /*<<< orphan*/  reply_lock; int /*<<< orphan*/  reply_list; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  M_XENSTORE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct xs_stored_msg* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct xs_stored_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xs_stored_msg*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__ xs ; 

__attribute__((used)) static int
FUNC7(enum xsd_sockmsg_type *type, u_int *len, void **result)
{
	struct xs_stored_msg *msg;
	char *body;
	int error;

	FUNC4(&xs.reply_lock);
	while (FUNC0(&xs.reply_list)) {
		error = FUNC5(&xs.reply_list, &xs.reply_lock, 0, "xswait",
		    hz/10);
		if (error && error != EWOULDBLOCK) {
			FUNC6(&xs.reply_lock);
			return (error);
		}
	}
	msg = FUNC1(&xs.reply_list);
	FUNC2(&xs.reply_list, msg, list);
	FUNC6(&xs.reply_lock);

	*type = msg->hdr.type;
	if (len)
		*len = msg->hdr.len;
	body = msg->u.reply.body;

	FUNC3(msg, M_XENSTORE);
	*result = body;
	return (0);
}