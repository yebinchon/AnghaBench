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
struct tws_softc {int dummy; } ;

/* Variables and functions */
 int TWS_LOCAL_TIME ; 
 int /*<<< orphan*/  TWS_PARAM_TIME_SCHED_TIME ; 
 int /*<<< orphan*/  TWS_PARAM_TIME_TABLE ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,long,int) ; 
 int time_second ; 
 int FUNC1 (struct tws_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,long*) ; 
 long FUNC2 () ; 

void
FUNC3(struct tws_softc *sc)
{

    int error;
    long int sync_time;

    FUNC0(sc, "entry", sc, 0);

    sync_time = (TWS_LOCAL_TIME - (3 * 86400)) % 604800;
    FUNC0(sc, "sync_time,ts", sync_time, time_second);
    FUNC0(sc, "utc_offset", FUNC2(), 0);
    error = FUNC1(sc, TWS_PARAM_TIME_TABLE, TWS_PARAM_TIME_SCHED_TIME,
                           4, &sync_time);
    if ( error )
        FUNC0(sc, "set param failed", sync_time, error);
}