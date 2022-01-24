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
struct nvme_completion {void* status; void* sqid; void* sqhd; int /*<<< orphan*/  cdw0; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
void	FUNC2(struct nvme_completion *s)
{

	s->cdw0 = FUNC1(s->cdw0);
	/* omit rsvd1 */
	s->sqhd = FUNC0(s->sqhd);
	s->sqid = FUNC0(s->sqid);
	/* omit cid */
	s->status = FUNC0(s->status);
}