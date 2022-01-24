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
typedef  int /*<<< orphan*/  u_int ;
struct sge_rspq {int /*<<< orphan*/  cntxt_id; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_RSPQ_CREDIT_RETURN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline void
FUNC3(adapter_t *sc, const struct sge_rspq *q, u_int credits)
{

	/* mbufs are allocated on demand when a rspq entry is processed. */
	FUNC2(sc, A_SG_RSPQ_CREDIT_RETURN,
		     FUNC1(q->cntxt_id) | FUNC0(credits));
}