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
struct bufqueue {scalar_t__ bq_len; } ;
struct bufdomain {scalar_t__ bd_lim; struct bufqueue* bd_subq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufdomain*,struct bufqueue*) ; 
 int mp_maxid ; 

__attribute__((used)) static int
FUNC3(struct bufdomain *bd)
{
	struct bufqueue *bq;
	int flushed;
	int i;

	if (bd->bd_lim == 0)
		return (0);
	flushed = 0;
	for (i = 0; i <= mp_maxid; i++) {
		bq = &bd->bd_subq[i];
		if (bq->bq_len == 0)
			continue;
		FUNC0(bq);
		FUNC2(bd, bq);
		FUNC1(bq);
		flushed++;
	}

	return (flushed);
}