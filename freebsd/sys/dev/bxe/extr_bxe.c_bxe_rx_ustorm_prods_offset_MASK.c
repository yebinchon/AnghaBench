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
struct bxe_softc {int dummy; } ;
struct bxe_fastpath {int /*<<< orphan*/  cl_id; int /*<<< orphan*/  cl_qzone_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR_USTRORM_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint32_t
FUNC4(struct bxe_softc    *sc,
                           struct bxe_fastpath *fp)
{
    uint32_t offset = BAR_USTRORM_INTMEM;

    if (!FUNC0(sc)) {
        offset += FUNC3(fp->cl_qzone_id);
    } else {
        offset += FUNC2(FUNC1(sc), fp->cl_id);
    }

    return (offset);
}