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
struct sge_wrq {int /*<<< orphan*/  eq; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sge_wrq*,int) ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct adapter *sc, struct sge_wrq *wrq)
{
	int rc;

	rc = FUNC1(sc, &wrq->eq);
	if (rc)
		return (rc);

	FUNC0(wrq, sizeof(*wrq));
	return (0);
}