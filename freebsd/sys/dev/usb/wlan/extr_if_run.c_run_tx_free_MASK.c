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
struct run_tx_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; } ;
struct run_endpoint_queue {int /*<<< orphan*/  tx_nfree; int /*<<< orphan*/  tx_fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct run_tx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC2(struct run_endpoint_queue *pq,
    struct run_tx_data *data, int txerr)
{

	FUNC1(data->ni, data->m, txerr);

	data->m = NULL;
	data->ni = NULL;

	FUNC0(&pq->tx_fh, data, next);
	pq->tx_nfree++;
}