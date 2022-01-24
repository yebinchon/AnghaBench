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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 struct mlx_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx_softc*) ; 

int
FUNC4(device_t dev)
{
    struct mlx_softc	*sc = FUNC2(dev);
    int			error;

    FUNC0(sc);
    error = FUNC3(sc);
    FUNC1(sc);
    return (error);
}