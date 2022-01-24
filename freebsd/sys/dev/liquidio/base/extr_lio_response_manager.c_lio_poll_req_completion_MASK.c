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
struct octeon_device {int dummy; } ;
struct lio_tq {int /*<<< orphan*/  work; int /*<<< orphan*/  tq; scalar_t__ ctxptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg, int pending)
{
	struct lio_tq		*ctq = (struct lio_tq *)arg;
	struct octeon_device	*oct = (struct octeon_device *)ctq->ctxptr;

	FUNC1(oct, 0);
	FUNC2(ctq->tq, &ctq->work, FUNC0(50));
}