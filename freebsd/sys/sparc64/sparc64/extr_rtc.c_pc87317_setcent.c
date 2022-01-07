
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int MC_REGA ;
 int PC87317_COMMON ;
 int PC87317_RTC ;
 int PC87317_RTC_CR ;
 int RTC_WRITE (int ,int ,int ) ;

__attribute__((used)) static void
pc87317_setcent(device_t dev, u_int cent)
{

 RTC_WRITE(dev, MC_REGA, PC87317_RTC);
 RTC_WRITE(dev, PC87317_RTC_CR, cent);
 RTC_WRITE(dev, MC_REGA, PC87317_COMMON);
}
