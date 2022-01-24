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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_tq {int /*<<< orphan*/  work; int /*<<< orphan*/  tq; int /*<<< orphan*/  ctxul; struct octeon_device* ctxptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg, int pending)
{
	struct lio_tq		*db_tq = (struct lio_tq *)arg;
	struct octeon_device	*oct = db_tq->ctxptr;
	uint64_t		iq_no = db_tq->ctxul;
	uint32_t		delay = 10;

	FUNC0(oct, iq_no);
	FUNC2(db_tq->tq, &db_tq->work,
				  FUNC1(delay));
}