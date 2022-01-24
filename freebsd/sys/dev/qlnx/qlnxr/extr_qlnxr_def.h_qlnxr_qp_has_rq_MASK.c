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
struct qlnxr_qp {scalar_t__ qp_type; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_GSI ; 
 scalar_t__ FUNC0 (struct qlnxr_qp*) ; 

__attribute__((used)) static inline bool FUNC1(struct qlnxr_qp *qp)
{
        if (qp->qp_type == IB_QPT_GSI || FUNC0(qp))
                return 0;

        return 1;
}