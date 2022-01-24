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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ time_t ;
struct ds13rtc_softc {int /*<<< orphan*/  secaddr; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_WAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct ds13rtc_softc *sc, time_t secs)
{
	uint8_t buf[4];

	FUNC1(buf, (uint32_t)secs);
	return (FUNC0(sc->dev, sc->secaddr, buf, sizeof(buf),
	    IIC_WAIT));
}