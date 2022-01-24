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
struct blockif_ctxt {scalar_t__ bc_magic; int bc_psectsz; int bc_psectoff; } ;

/* Variables and functions */
 scalar_t__ BLOCKIF_SIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void
FUNC1(struct blockif_ctxt *bc, int *size, int *off)
{

	FUNC0(bc->bc_magic == BLOCKIF_SIG);
	*size = bc->bc_psectsz;
	*off = bc->bc_psectoff;
}