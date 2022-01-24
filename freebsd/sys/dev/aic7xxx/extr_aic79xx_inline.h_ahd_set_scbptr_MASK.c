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
typedef  int u_int ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int,int) ; 
 int AHD_MODE_CFG_MSK ; 
 int AHD_MODE_UNKNOWN_MSK ; 
 scalar_t__ SCBPTR ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,scalar_t__,int) ; 

__attribute__((used)) static __inline void
FUNC2(struct ahd_softc *ahd, u_int scbptr)
{
	FUNC0(ahd, ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK),
			 ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK));
	FUNC1(ahd, SCBPTR, scbptr & 0xFF);
	FUNC1(ahd, SCBPTR+1, (scbptr >> 8) & 0xFF);
}