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
struct dmar_domain {int /*<<< orphan*/  domain; struct dmar_unit* dmar; } ;
typedef  int dmar_gaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DMAR_IQ_DESCR_IOTLB_DR ; 
 int DMAR_IQ_DESCR_IOTLB_DW ; 
 int DMAR_IQ_DESCR_IOTLB_INV ; 
 int DMAR_IQ_DESCR_IOTLB_PAGE ; 
 int FUNC2 (struct dmar_unit*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*,struct dmar_qi_genseq*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*,int) ; 

void
FUNC7(struct dmar_domain *domain, dmar_gaddr_t base,
    dmar_gaddr_t size, struct dmar_qi_genseq *pseq, bool emit_wait)
{
	struct dmar_unit *unit;
	dmar_gaddr_t isize;
	int am;

	unit = domain->dmar;
	FUNC0(unit);
	for (; size > 0; base += isize, size -= isize) {
		am = FUNC2(unit, base, size, &isize);
		FUNC6(unit, 1);
		FUNC4(unit, DMAR_IQ_DESCR_IOTLB_INV |
		    DMAR_IQ_DESCR_IOTLB_PAGE | DMAR_IQ_DESCR_IOTLB_DW |
		    DMAR_IQ_DESCR_IOTLB_DR |
		    FUNC1(domain->domain),
		    base | am);
	}
	FUNC5(unit, pseq, emit_wait);
	FUNC3(unit);
}