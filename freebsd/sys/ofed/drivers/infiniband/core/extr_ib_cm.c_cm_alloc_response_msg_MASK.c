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
struct ib_mad_send_buf {int dummy; } ;
struct ib_mad_recv_wc {int dummy; } ;
struct cm_port {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_mad_send_buf*) ; 
 int FUNC1 (struct ib_mad_send_buf*) ; 
 struct ib_mad_send_buf* FUNC2 (struct cm_port*,struct ib_mad_recv_wc*) ; 
 int FUNC3 (struct cm_port*,struct ib_mad_recv_wc*,struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_send_buf*) ; 

__attribute__((used)) static int FUNC5(struct cm_port *port,
				 struct ib_mad_recv_wc *mad_recv_wc,
				 struct ib_mad_send_buf **msg)
{
	struct ib_mad_send_buf *m;
	int ret;

	m = FUNC2(port, mad_recv_wc);
	if (FUNC0(m))
		return FUNC1(m);

	ret = FUNC3(port, mad_recv_wc, m);
	if (ret) {
		FUNC4(m);
		return ret;
	}

	*msg = m;
	return 0;
}