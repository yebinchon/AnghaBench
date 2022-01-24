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
typedef  int /*<<< orphan*/  u_int16_t ;
struct twe_softc {int dummy; } ;
struct twe_request {scalar_t__ tr_data; struct twe_softc* tr_sc; } ;
struct TYPE_2__ {scalar_t__ data; } ;
typedef  TYPE_1__ TWE_Param ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_request*) ; 

__attribute__((used)) static void
FUNC4(struct twe_request *tr)
{
    struct twe_softc	*sc = tr->tr_sc;
    TWE_Param		*param;
    u_int16_t		aen;

    FUNC0(4);

    /* XXX check for command success somehow? */

    param = (TWE_Param *)tr->tr_data;
    aen = *(u_int16_t *)(param->data);

    FUNC1(tr->tr_data, M_DEVBUF);
    FUNC3(tr);
    FUNC2(sc, aen);

    /* XXX poll for more AENs? */
}