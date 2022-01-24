#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct adapter_info {int dummy; } ;
struct TYPE_6__ {int cclk; int mdc; } ;
struct TYPE_7__ {TYPE_1__ vpd; } ;
struct TYPE_8__ {TYPE_2__ params; } ;
typedef  TYPE_3__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_MI1_CFG ; 
 int F_PREEN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(adapter_t *adap, const struct adapter_info *ai)
{
        u32 clkdiv = adap->params.vpd.cclk / (2 * adap->params.vpd.mdc) - 1;
        u32 val = F_PREEN | FUNC0(clkdiv);

        FUNC1(adap, A_MI1_CFG, val);
}