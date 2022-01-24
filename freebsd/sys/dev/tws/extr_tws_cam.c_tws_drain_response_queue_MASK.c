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
typedef  int /*<<< orphan*/  u_int16_t ;
struct tws_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tws_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct tws_softc *sc)
{
    u_int16_t req_id;
    u_int64_t mfa;
    while ( FUNC0(sc, &req_id, &mfa) );
}