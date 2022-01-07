
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
 int RTC_READ (int ,int ) ;
 int RTC_WRITE (int ,int ,int ) ;

__attribute__((used)) static u_int
pc87317_getcent(device_t dev)
{
 u_int cent;

 RTC_WRITE(dev, MC_REGA, PC87317_RTC);
 cent = RTC_READ(dev, PC87317_RTC_CR);
 RTC_WRITE(dev, MC_REGA, PC87317_COMMON);
 return (cent);
}
