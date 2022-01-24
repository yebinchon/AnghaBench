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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct nscd_connection_params {int /*<<< orphan*/  socket_path; } ;
struct nscd_connection_ {int sockfd; int write_queue; int read_queue; } ;
struct kevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  EVFILT_WRITE ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct nscd_connection_* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC9 () ; 
 int /*<<< orphan*/  open_nscd_connection ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

struct nscd_connection_ *
FUNC13(struct nscd_connection_params const *params)
{
	struct nscd_connection_ *retval;
	struct kevent eventlist;
	struct sockaddr_un	client_address;
	int client_address_len, client_socket;
	int res;

	FUNC1(open_nscd_connection);
	FUNC3(params != NULL);

	client_socket = FUNC10(PF_LOCAL, SOCK_STREAM, 0);
	client_address.sun_family = PF_LOCAL;
	FUNC11(client_address.sun_path, params->socket_path,
		sizeof(client_address.sun_path));
	client_address_len = sizeof(client_address.sun_family) +
		FUNC12(client_address.sun_path) + 1;

	res = FUNC6(client_socket, (struct sockaddr *)&client_address,
		client_address_len);
	if (res == -1) {
		FUNC5(client_socket);
		FUNC2(open_nscd_connection);
		return (NULL);
	}
	FUNC7(client_socket, F_SETFL, O_NONBLOCK);

	retval = FUNC4(1, sizeof(*retval));
	FUNC3(retval != NULL);

	retval->sockfd = client_socket;

	retval->write_queue = FUNC9();
	FUNC3(retval->write_queue != -1);

	FUNC0(&eventlist, retval->sockfd, EVFILT_WRITE, EV_ADD,
		0, 0, NULL);
	res = FUNC8(retval->write_queue, &eventlist, 1, NULL, 0, NULL);

	retval->read_queue = FUNC9();
	FUNC3(retval->read_queue != -1);

	FUNC0(&eventlist, retval->sockfd, EVFILT_READ, EV_ADD,
		0, 0, NULL);
	res = FUNC8(retval->read_queue, &eventlist, 1, NULL, 0, NULL);

	FUNC2(open_nscd_connection);
	return (retval);
}