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
typedef  int /*<<< orphan*/  uint16_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ BAR_TSTRORM_INTMEM ; 
 scalar_t__ BAR_USTRORM_INTMEM ; 
 scalar_t__ BAR_XSTRORM_INTMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc *sc,
                      uint16_t         abs_fid,
                      uint16_t         pf_id)
{
    FUNC1(sc, (BAR_XSTRORM_INTMEM + FUNC4(abs_fid)), pf_id);
    FUNC1(sc, (BAR_CSTRORM_INTMEM + FUNC0(abs_fid)), pf_id);
    FUNC1(sc, (BAR_TSTRORM_INTMEM + FUNC2(abs_fid)), pf_id);
    FUNC1(sc, (BAR_USTRORM_INTMEM + FUNC3(abs_fid)), pf_id);
}