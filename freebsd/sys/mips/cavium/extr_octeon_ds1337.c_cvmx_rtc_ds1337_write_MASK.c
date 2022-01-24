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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct timespec {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct clocktime {int sec; int min; int hour; int dow; int day; int mon; int year; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_RTC_DS1337_ADDR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,struct clocktime*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (struct clocktime*) ; 

int FUNC6(uint32_t time)
{
    struct clocktime ct;
    struct timespec ts;
    int       i, rc, retry;
    uint8_t   reg[8];
    uint8_t   sec;

    ts.tv_sec = time;
    ts.tv_nsec = 0;

    FUNC1(&ts, &ct);

    if (FUNC5(&ct))
    {
	FUNC2("Error: RTC was passed wrong calendar values, write failed\n");
	goto ct_invalid;
    }

    reg[0] = FUNC0(ct.sec);
    reg[1] = FUNC0(ct.min);
    reg[2] = FUNC0(ct.hour);       /* Force 0..23 format even if using AM/PM */
    reg[3] = FUNC0(ct.dow + 1);
    reg[4] = FUNC0(ct.day);
    reg[5] = FUNC0(ct.mon);
#if !defined(OCTEON_BOARD_CAPK_0100ND)
    if (ct.year >= 2000)             /* Set century bit*/
    {
	reg[5] |= 0x80;
    }
#endif
    reg[6] = FUNC0(ct.year % 100);

    /* Lockless write: detects the infrequent roll-over and retries */
    for(retry=0; retry<2; retry++)
    {
	rc = 0;
	for(i=0; i<7; i++)
	{
	    rc |= FUNC4(CVMX_RTC_DS1337_ADDR, i, reg[i]);
	}

	sec = FUNC3(CVMX_RTC_DS1337_ADDR, 0x0);
	if ((sec & 0xf) == (reg[0] & 0xf))
	    break; /* Time did not roll-over, value is correct */
    }

    return (rc ? -1 : 0);

 ct_invalid:
    return -1;
}