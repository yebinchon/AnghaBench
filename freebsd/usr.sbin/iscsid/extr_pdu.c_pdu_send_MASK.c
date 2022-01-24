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
typedef  int /*<<< orphan*/  zero ;
typedef  int /*<<< orphan*/  uint32_t ;
struct pdu {int pdu_data_len; int /*<<< orphan*/ * pdu_data; int /*<<< orphan*/ * pdu_bhs; struct connection* pdu_connection; } ;
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
struct TYPE_2__ {scalar_t__ isc_iser; } ;
struct connection {int /*<<< orphan*/  conn_socket; TYPE_1__ conn_conf; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 size_t FUNC3 (struct pdu*) ; 
 void FUNC4 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC5 (struct pdu*,int) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,struct iovec*,int) ; 

void
FUNC8(struct pdu *pdu)
{
	struct connection *conn;
	ssize_t ret, total_len;
	size_t padding;
	uint32_t zero = 0;
	struct iovec iov[3];
	int iovcnt;

	conn = pdu->pdu_connection;
#ifdef ICL_KERNEL_PROXY
	if (conn->conn_conf.isc_iser != 0)
		return (pdu_send_proxy(pdu));
#endif

	FUNC0(conn->conn_conf.isc_iser == 0);

	FUNC5(pdu, pdu->pdu_data_len);
	iov[0].iov_base = pdu->pdu_bhs;
	iov[0].iov_len = sizeof(*pdu->pdu_bhs);
	total_len = iov[0].iov_len;
	iovcnt = 1;

	if (pdu->pdu_data_len > 0) {
		iov[1].iov_base = pdu->pdu_data;
		iov[1].iov_len = pdu->pdu_data_len;
		total_len += iov[1].iov_len;
		iovcnt = 2;

		padding = FUNC3(pdu);
		if (padding > 0) {
			FUNC0(padding < sizeof(zero));
			iov[2].iov_base = &zero;
			iov[2].iov_len = padding;
			total_len += iov[2].iov_len;
			iovcnt = 3;
		}
	}

	ret = FUNC7(conn->conn_socket, iov, iovcnt);
	if (ret < 0) {
		if (FUNC6())
			FUNC2(1, "exiting due to timeout");
		FUNC1(1, "writev");
	}
	if (ret != total_len)
		FUNC2(1, "short write");
}