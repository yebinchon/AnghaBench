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
struct mlx_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_softc*,int) ; 

void
FUNC4(void *arg)
{
    struct mlx_softc	*sc = (struct mlx_softc *)arg;

    FUNC2(1);

    /* collect finished commands, queue anything waiting */
    FUNC0(sc);
    FUNC3(sc, 1);
    FUNC1(sc);
}