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
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  scalar_t__ u_int16_t ;
typedef  scalar_t__ time_t ;
struct tws_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ TWS_INVALID_REQID ; 
 scalar_t__ TWS_LOCAL_TIME ; 
 scalar_t__ TWS_POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct tws_softc*,scalar_t__*,int /*<<< orphan*/ *) ; 

u_int16_t
FUNC2(struct tws_softc *sc, u_int64_t *mfa)
{
    u_int16_t req_id;
    time_t endt;

    endt = TWS_LOCAL_TIME + TWS_POLL_TIMEOUT;
    do {
        if(FUNC1(sc, &req_id, mfa)) {

            if ( req_id == TWS_INVALID_REQID ) {
                FUNC0(sc, "invalid req_id", 0, req_id);
                return(TWS_INVALID_REQID);
            }
            return(req_id);
        }
    } while (TWS_LOCAL_TIME <= endt);
    FUNC0(sc, "poll timeout", 0, 0);
    return(TWS_INVALID_REQID);
}