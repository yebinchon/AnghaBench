
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct clocktime {int sec; int min; int hour; int dow; int day; int mon; int year; } ;


 int CVMX_RTC_DS1337_ADDR ;
 int bin2bcd (int) ;
 int clock_ts_to_ct (struct timespec*,struct clocktime*) ;
 int cvmx_dprintf (char*) ;
 int cvmx_twsi_read8 (int ,int) ;
 int cvmx_twsi_write8 (int ,int,int) ;
 scalar_t__ validate_ct_struct (struct clocktime*) ;

int cvmx_rtc_ds1337_write(uint32_t time)
{
    struct clocktime ct;
    struct timespec ts;
    int i, rc, retry;
    uint8_t reg[8];
    uint8_t sec;

    ts.tv_sec = time;
    ts.tv_nsec = 0;

    clock_ts_to_ct(&ts, &ct);

    if (validate_ct_struct(&ct))
    {
 cvmx_dprintf("Error: RTC was passed wrong calendar values, write failed\n");
 goto ct_invalid;
    }

    reg[0] = bin2bcd(ct.sec);
    reg[1] = bin2bcd(ct.min);
    reg[2] = bin2bcd(ct.hour);
    reg[3] = bin2bcd(ct.dow + 1);
    reg[4] = bin2bcd(ct.day);
    reg[5] = bin2bcd(ct.mon);

    if (ct.year >= 2000)
    {
 reg[5] |= 0x80;
    }

    reg[6] = bin2bcd(ct.year % 100);


    for(retry=0; retry<2; retry++)
    {
 rc = 0;
 for(i=0; i<7; i++)
 {
     rc |= cvmx_twsi_write8(CVMX_RTC_DS1337_ADDR, i, reg[i]);
 }

 sec = cvmx_twsi_read8(CVMX_RTC_DS1337_ADDR, 0x0);
 if ((sec & 0xf) == (reg[0] & 0xf))
     break;
    }

    return (rc ? -1 : 0);

 ct_invalid:
    return -1;
}
