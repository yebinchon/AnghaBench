
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int IO_RTC ;
 int inb (int) ;
 int outb (int,int) ;
 int rtc_reg ;

__attribute__((used)) static inline u_char
rtcin_locked(int reg)
{

 if (rtc_reg != reg) {
  inb(0x84);
  outb(IO_RTC, reg);
  rtc_reg = reg;
  inb(0x84);
 }
 return (inb(IO_RTC + 1));
}
