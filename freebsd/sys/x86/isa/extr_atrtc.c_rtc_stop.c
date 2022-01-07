
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int dummy; } ;


 int atrtc_disable_intr () ;

__attribute__((used)) static int
rtc_stop(struct eventtimer *et)
{

 atrtc_disable_intr();
 return (0);
}
