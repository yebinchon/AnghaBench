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
struct blockif_req {int dummy; } ;
struct blockif_ctxt {scalar_t__ bc_magic; } ;

/* Variables and functions */
 scalar_t__ BLOCKIF_SIG ; 
 int /*<<< orphan*/  BOP_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct blockif_ctxt*,struct blockif_req*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct blockif_ctxt *bc, struct blockif_req *breq)
{

	FUNC0(bc->bc_magic == BLOCKIF_SIG);
	return (FUNC1(bc, breq, BOP_DELETE));
}