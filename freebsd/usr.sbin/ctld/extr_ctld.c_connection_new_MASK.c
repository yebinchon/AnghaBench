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
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct portal {int dummy; } ;
struct connection {int conn_socket; int conn_max_recv_data_segment_length; int conn_max_send_data_segment_length; int conn_max_burst_length; int conn_first_burst_length; int conn_immediate_data; int /*<<< orphan*/  conn_initiator_sa; int /*<<< orphan*/  conn_initiator_addr; struct portal* conn_portal; } ;

/* Variables and functions */
 struct connection* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct connection *
FUNC4(struct portal *portal, int fd, const char *host,
    const struct sockaddr *client_sa)
{
	struct connection *conn;

	conn = FUNC0(1, sizeof(*conn));
	if (conn == NULL)
		FUNC2(1, "calloc");
	conn->conn_portal = portal;
	conn->conn_socket = fd;
	conn->conn_initiator_addr = FUNC1(host);
	FUNC3(&conn->conn_initiator_sa, client_sa, client_sa->sa_len);

	/*
	 * Default values, from RFC 3720, section 12.
	 */
	conn->conn_max_recv_data_segment_length = 8192;
	conn->conn_max_send_data_segment_length = 8192;
	conn->conn_max_burst_length = 262144;
	conn->conn_first_burst_length = 65536;
	conn->conn_immediate_data = true;

	return (conn);
}