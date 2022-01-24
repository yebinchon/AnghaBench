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
struct mthca_cqe {int dummy; } ;
struct mthca_cq {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct mthca_cqe* FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline struct mthca_cqe *FUNC1(struct mthca_cq *cq, int entry)
{
	return FUNC0(&cq->buf, entry);
}