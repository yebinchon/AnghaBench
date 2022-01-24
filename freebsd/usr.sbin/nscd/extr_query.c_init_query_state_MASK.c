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
typedef  int /*<<< orphan*/  uid_t ;
struct TYPE_3__ {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct query_state {int sockfd; size_t kevent_watermark; int uid; int gid; TYPE_1__ timeout; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  read_func; int /*<<< orphan*/  write_func; int /*<<< orphan*/  destroy_func; int /*<<< orphan*/  process_func; int /*<<< orphan*/  response; int /*<<< orphan*/  request; int /*<<< orphan*/  eid_str; int /*<<< orphan*/  eid_str_length; int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; int /*<<< orphan*/  kevent_filter; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_4__ {int /*<<< orphan*/  query_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CET_UNDEFINED ; 
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  FUNC0 (struct query_state* (*) (int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC1 (struct query_state* (*) (int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct query_state* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct query_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_query_destroy ; 
 int /*<<< orphan*/  on_query_startup ; 
 int /*<<< orphan*/  query_socket_read ; 
 int /*<<< orphan*/  query_socket_write ; 
 TYPE_2__* s_configuration ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct query_state *
FUNC9(int sockfd, size_t kevent_watermark, uid_t euid, gid_t egid)
{
	struct query_state	*retval;

	FUNC0(init_query_state);
	retval = FUNC4(1, sizeof(*retval));
	FUNC3(retval != NULL);

	retval->sockfd = sockfd;
	retval->kevent_filter = EVFILT_READ;
	retval->kevent_watermark = kevent_watermark;

	retval->euid = euid;
	retval->egid = egid;
	retval->uid = retval->gid = -1;

	if (FUNC2(&retval->eid_str, "%d_%d_", retval->euid,
		retval->egid) == -1) {
		FUNC5(retval);
		return (NULL);
	}
	retval->eid_str_length = FUNC8(retval->eid_str);

	FUNC7(&retval->request, CET_UNDEFINED);
	FUNC7(&retval->response, CET_UNDEFINED);
	retval->process_func = on_query_startup;
	retval->destroy_func = on_query_destroy;

	retval->write_func = query_socket_write;
	retval->read_func = query_socket_read;

	FUNC6(&retval->creation_time);
	retval->timeout.tv_sec = s_configuration->query_timeout;
	retval->timeout.tv_usec = 0;

	FUNC1(init_query_state);
	return (retval);
}