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
typedef  int /*<<< orphan*/  uint32_t ;
struct uchcom_softc {int dummy; } ;
struct uchcom_divider {int dv_prescaler; int dv_mod; int /*<<< orphan*/  dv_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCHCOM_REG_BPS_DIV ; 
 int /*<<< orphan*/  UCHCOM_REG_BPS_MOD ; 
 int /*<<< orphan*/  UCHCOM_REG_BPS_PAD ; 
 int /*<<< orphan*/  UCHCOM_REG_BPS_PRE ; 
 scalar_t__ FUNC0 (struct uchcom_divider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uchcom_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct uchcom_softc *sc, uint32_t rate)
{
	struct uchcom_divider dv;

	if (FUNC0(&dv, rate))
		return;

	/*
	 * According to linux code we need to set bit 7 of UCHCOM_REG_BPS_PRE,
	 * otherwise the chip will buffer data.
	 */
	FUNC1(sc,
	    UCHCOM_REG_BPS_PRE, dv.dv_prescaler | 0x80,
	    UCHCOM_REG_BPS_DIV, dv.dv_div);
	FUNC1(sc,
	    UCHCOM_REG_BPS_MOD, dv.dv_mod,
	    UCHCOM_REG_BPS_PAD, 0);
}