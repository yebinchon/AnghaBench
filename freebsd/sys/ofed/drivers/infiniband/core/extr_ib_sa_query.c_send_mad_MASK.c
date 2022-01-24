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
struct ib_sa_query {int id; int flags; TYPE_1__* mad_buf; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int timeout_ms; struct ib_sa_query** context; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int IB_SA_ENABLE_LOCAL_SERVICE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_sa_query*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ib_sa_query*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  query_idr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct ib_sa_query *query, int timeout_ms, gfp_t gfp_mask)
{
	bool preload = FUNC0(gfp_mask);
	unsigned long flags;
	int ret, id;

	if (preload)
		FUNC4(gfp_mask);
	FUNC7(&idr_lock, flags);

	id = FUNC3(&query_idr, query, 0, 0, GFP_NOWAIT);

	FUNC8(&idr_lock, flags);
	if (preload)
		FUNC5();
	if (id < 0)
		return id;

	query->mad_buf->timeout_ms  = timeout_ms;
	query->mad_buf->context[0] = query;
	query->id = id;

	if (query->flags & IB_SA_ENABLE_LOCAL_SERVICE) {
		FUNC2(query);
	}

	ret = FUNC1(query->mad_buf, NULL);
	if (ret) {
		FUNC7(&idr_lock, flags);
		FUNC6(&query_idr, id);
		FUNC8(&idr_lock, flags);
	}

	/*
	 * It's not safe to dereference query any more, because the
	 * send may already have completed and freed the query in
	 * another context.
	 */
	return ret ? ret : id;
}