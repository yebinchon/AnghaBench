#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mbx_get_pport_stats {int dummy; } ;
struct mbx_get_nic_stats_v2 {int dummy; } ;
struct mbx_get_nic_stats_v1 {int dummy; } ;
struct mbx_get_nic_stats_v0 {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  stats_mem; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(POCE_SOFTC sc)
{
	int rc = 0, sz = 0;


        if( FUNC0(sc) ) 
		sz = sizeof(struct mbx_get_nic_stats_v0);
        else if( FUNC1(sc) ) 
		sz = sizeof(struct mbx_get_nic_stats_v1);
        else if( FUNC2(sc)) 
		sz = sizeof(struct mbx_get_nic_stats_v2);
        else if( FUNC3(sc) )
		sz = sizeof(struct mbx_get_pport_stats);

	rc = FUNC4(sc, sz, &sc->stats_mem, 0);

	return rc;
}