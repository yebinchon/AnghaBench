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
struct dmar_unit {int dummy; } ;
struct dmar_qi_genseq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int DMAR_IQ_DESCR_CTX_GLOB ; 
 int DMAR_IQ_DESCR_CTX_INV ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*,struct dmar_qi_genseq*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*,struct dmar_qi_genseq*,int) ; 

void
FUNC6(struct dmar_unit *unit)
{
	struct dmar_qi_genseq gseq;

	FUNC0(unit);
	FUNC4(unit, 2);
	FUNC2(unit, DMAR_IQ_DESCR_CTX_INV | DMAR_IQ_DESCR_CTX_GLOB, 0);
	FUNC3(unit, &gseq, true);
	FUNC1(unit);
	FUNC5(unit, &gseq, false);
}