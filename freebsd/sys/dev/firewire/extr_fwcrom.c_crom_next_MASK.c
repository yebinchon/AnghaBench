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
typedef  scalar_t__ vm_offset_t ;
struct csrreg {int key; int val; } ;
struct csrdirectory {scalar_t__ crc_len; } ;
struct crom_ptr {scalar_t__ index; struct csrdirectory* dir; } ;
struct crom_context {size_t depth; struct crom_ptr* stack; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crom_context*) ; 
 size_t CROM_MAX_DEPTH ; 
 int CSRTYPE_D ; 
 int CSRTYPE_MASK ; 
 struct csrreg* FUNC1 (struct crom_context*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(struct crom_context *cc)
{
	struct crom_ptr *ptr;
	struct csrreg *reg;

	if (cc->depth < 0)
		return;
	reg = FUNC1(cc);
	if ((reg->key & CSRTYPE_MASK) == CSRTYPE_D) {
		if (cc->depth >= CROM_MAX_DEPTH) {
			FUNC2("crom_next: too deep\n");
			goto again;
		}
		cc->depth++;

		ptr = &cc->stack[cc->depth];
		ptr->dir = (struct csrdirectory *) (reg + reg->val);
		ptr->index = 0;
		goto check;
	}
again:
	ptr = &cc->stack[cc->depth];
	ptr->index++;
check:
	if (ptr->index < ptr->dir->crc_len &&
	    (vm_offset_t)FUNC1(cc) <= FUNC0(cc))
		return;

	if (ptr->index < ptr->dir->crc_len)
		FUNC2("crom_next: bound check failed\n");

	if (cc->depth > 0) {
		cc->depth--;
		goto again;
	}
	/* no more data */
	cc->depth = -1;
}