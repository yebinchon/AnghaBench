
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;


 int RTC_HMEM_LSB ;
 int RTC_HMEM_MSB ;
 int RTC_HMEM_SB ;
 int RTC_LMEM_LSB ;
 int RTC_LMEM_MSB ;
 int assert (int) ;
 size_t m_16MB ;
 size_t m_64KB ;
 int rtc_time (struct vmctx*,int) ;
 size_t vm_get_highmem_size (struct vmctx*) ;
 size_t vm_get_lowmem_size (struct vmctx*) ;
 int vm_rtc_settime (struct vmctx*,int ) ;
 int vm_rtc_write (struct vmctx*,int ,size_t) ;

void
rtc_init(struct vmctx *ctx, int use_localtime)
{
 size_t himem;
 size_t lomem;
 int err;
 lomem = (vm_get_lowmem_size(ctx) - m_16MB) / m_64KB;
 err = vm_rtc_write(ctx, RTC_LMEM_LSB, lomem);
 assert(err == 0);
 err = vm_rtc_write(ctx, RTC_LMEM_MSB, lomem >> 8);
 assert(err == 0);

 himem = vm_get_highmem_size(ctx) / m_64KB;
 err = vm_rtc_write(ctx, RTC_HMEM_LSB, himem);
 assert(err == 0);
 err = vm_rtc_write(ctx, RTC_HMEM_SB, himem >> 8);
 assert(err == 0);
 err = vm_rtc_write(ctx, RTC_HMEM_MSB, himem >> 16);
 assert(err == 0);

 err = vm_rtc_settime(ctx, rtc_time(ctx, use_localtime));
 assert(err == 0);
}
