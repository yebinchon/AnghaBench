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
struct vmctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_HMEM_LSB ; 
 int /*<<< orphan*/  RTC_HMEM_MSB ; 
 int /*<<< orphan*/  RTC_HMEM_SB ; 
 int /*<<< orphan*/  RTC_LMEM_LSB ; 
 int /*<<< orphan*/  RTC_LMEM_MSB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t m_16MB ; 
 size_t m_64KB ; 
 int /*<<< orphan*/  FUNC1 (struct vmctx*,int) ; 
 size_t FUNC2 (struct vmctx*) ; 
 size_t FUNC3 (struct vmctx*) ; 
 int FUNC4 (struct vmctx*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vmctx*,int /*<<< orphan*/ ,size_t) ; 

void
FUNC6(struct vmctx *ctx, int use_localtime)
{	
	size_t himem;
	size_t lomem;
	int err;

	/* XXX init diag/reset code/equipment/checksum ? */

	/*
	 * Report guest memory size in nvram cells as required by UEFI.
	 * Little-endian encoding.
	 * 0x34/0x35 - 64KB chunks above 16MB, below 4GB
	 * 0x5b/0x5c/0x5d - 64KB chunks above 4GB
	 */
	lomem = (FUNC3(ctx) - m_16MB) / m_64KB;
	err = FUNC5(ctx, RTC_LMEM_LSB, lomem);
	FUNC0(err == 0);
	err = FUNC5(ctx, RTC_LMEM_MSB, lomem >> 8);
	FUNC0(err == 0);

	himem = FUNC2(ctx) / m_64KB;
	err = FUNC5(ctx, RTC_HMEM_LSB, himem);
	FUNC0(err == 0);
	err = FUNC5(ctx, RTC_HMEM_SB, himem >> 8);
	FUNC0(err == 0);
	err = FUNC5(ctx, RTC_HMEM_MSB, himem >> 16);
	FUNC0(err == 0);

	err = FUNC4(ctx, FUNC1(ctx, use_localtime));
	FUNC0(err == 0);
}