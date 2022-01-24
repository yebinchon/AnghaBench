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
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SEEARBACK ; 
 int SEEBUSY ; 
 int /*<<< orphan*/  SEESTAT ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int
FUNC2(struct ahd_softc *ahd)
{
	int cnt;

	cnt = 5000;
	while ((FUNC0(ahd, SEESTAT) & (SEEARBACK|SEEBUSY)) != 0 && --cnt)
		FUNC1(5);

	if (cnt == 0)
		return (ETIMEDOUT);
	return (0);
}