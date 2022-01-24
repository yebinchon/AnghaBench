#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* dma_active; } ;
struct sc_info {TYPE_1__ pch; TYPE_1__ rch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int) ; 
 struct sc_info* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
    struct sc_info *sc;

    sc = FUNC2(dev);

    sc->rch.dma_active = FUNC0(&sc->rch, 0);
    sc->pch.dma_active = FUNC0(&sc->pch, 0);

    FUNC1(sc, 3);

    return 0;
}