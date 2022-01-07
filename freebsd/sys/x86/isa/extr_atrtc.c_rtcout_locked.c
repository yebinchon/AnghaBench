
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ IO_RTC ;
 int inb (int) ;
 int outb (scalar_t__,int) ;
 int rtc_reg ;

__attribute__((used)) static inline void
rtcout_locked(int reg, u_char val)
{

 if (rtc_reg != reg) {
  inb(0x84);
  outb(IO_RTC, reg);
  rtc_reg = reg;
  inb(0x84);
 }
 outb(IO_RTC + 1, val);
 inb(0x84);
}
