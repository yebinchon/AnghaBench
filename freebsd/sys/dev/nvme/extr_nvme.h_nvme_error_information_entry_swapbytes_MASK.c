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
struct nvme_error_information_entry {void* ttsi; void* csi; int /*<<< orphan*/  nsid; void* lba; void* error_location; void* status; void* cid; void* sqid; void* error_count; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static inline
void	FUNC3(struct nvme_error_information_entry *s)
{

	s->error_count = FUNC2(s->error_count);
	s->sqid = FUNC0(s->sqid);
	s->cid = FUNC0(s->cid);
	s->status = FUNC0(s->status);
	s->error_location = FUNC0(s->error_location);
	s->lba = FUNC2(s->lba);
	s->nsid = FUNC1(s->nsid);
	s->csi = FUNC2(s->csi);
	s->ttsi = FUNC0(s->ttsi);
}