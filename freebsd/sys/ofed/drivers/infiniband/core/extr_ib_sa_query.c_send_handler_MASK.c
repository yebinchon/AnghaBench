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
struct ib_sa_query {int /*<<< orphan*/  (* release ) (struct ib_sa_query*) ;int /*<<< orphan*/  client; int /*<<< orphan*/  id; int /*<<< orphan*/  (* callback ) (struct ib_sa_query*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct ib_mad_send_wc {int status; TYPE_1__* send_buf; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {struct ib_sa_query** context; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
#define  IB_WC_RESP_TIMEOUT_ERR 130 
#define  IB_WC_SUCCESS 129 
#define  IB_WC_WR_FLUSH_ERR 128 
 int /*<<< orphan*/  FUNC0 (struct ib_sa_query*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  query_idr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_sa_query*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_sa_query*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_sa_query*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_sa_query*) ; 

__attribute__((used)) static void FUNC9(struct ib_mad_agent *agent,
			 struct ib_mad_send_wc *mad_send_wc)
{
	struct ib_sa_query *query = mad_send_wc->send_buf->context[0];
	unsigned long flags;

	if (query->callback)
		switch (mad_send_wc->status) {
		case IB_WC_SUCCESS:
			/* No callback -- already got recv */
			break;
		case IB_WC_RESP_TIMEOUT_ERR:
			query->callback(query, -ETIMEDOUT, NULL);
			break;
		case IB_WC_WR_FLUSH_ERR:
			query->callback(query, -EINTR, NULL);
			break;
		default:
			query->callback(query, -EIO, NULL);
			break;
		}

	FUNC3(&idr_lock, flags);
	FUNC2(&query_idr, query->id);
	FUNC4(&idr_lock, flags);

	FUNC0(query);
	FUNC1(query->client);
	query->release(query);
}