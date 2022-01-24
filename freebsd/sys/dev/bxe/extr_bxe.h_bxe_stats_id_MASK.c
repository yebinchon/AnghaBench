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
typedef  scalar_t__ uint8_t ;
struct bxe_softc {int dummy; } ;
struct bxe_fastpath {scalar_t__ cl_id; struct bxe_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 int FP_SB_MAX_E1x ; 
 int FUNC1 (struct bxe_softc*) ; 

__attribute__((used)) static inline uint8_t
FUNC2(struct bxe_fastpath *fp)
{
    struct bxe_softc *sc = fp->sc;

    if (!FUNC0(sc)) {
        return (fp->cl_id);
    }

    return (fp->cl_id + FUNC1(sc) * FP_SB_MAX_E1x);
}