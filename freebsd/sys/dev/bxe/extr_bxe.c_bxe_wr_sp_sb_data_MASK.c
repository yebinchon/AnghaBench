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
struct hc_sp_status_block_data {int dummy; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 

__attribute__((used)) static void
FUNC3(struct bxe_softc               *sc,
                  struct hc_sp_status_block_data *sp_sb_data)
{
    int i;

    for (i = 0;
         i < (sizeof(struct hc_sp_status_block_data) / sizeof(uint32_t));
         i++) {
        FUNC1(sc,
               (BAR_CSTRORM_INTMEM +
                FUNC0(FUNC2(sc)) +
                (i * sizeof(uint32_t))),
               *((uint32_t *)sp_sb_data + i));
    }
}