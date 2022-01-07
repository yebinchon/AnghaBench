
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbintime_t ;


 int lv1_pause (int ) ;

__attribute__((used)) static void
ps3_cpu_idle(sbintime_t sbt)
{
 lv1_pause(0);
}
