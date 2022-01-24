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
struct TYPE_2__ {int depth; int /*<<< orphan*/  q; scalar_t__ overflow; scalar_t__ tail; scalar_t__ head; } ;
struct tws_softc {TYPE_1__ aen_q; } ;
struct tws_event_packet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TWS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct tws_softc *sc)
{
    sc->aen_q.head=0;
    sc->aen_q.tail=0;
    sc->aen_q.depth=256;
    sc->aen_q.overflow=0;
    sc->aen_q.q = FUNC0(sizeof(struct tws_event_packet)*sc->aen_q.depth, 
                              M_TWS, M_WAITOK | M_ZERO);
    return(SUCCESS);
}