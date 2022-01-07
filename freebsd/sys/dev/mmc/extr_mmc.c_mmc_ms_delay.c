
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY (int) ;

__attribute__((used)) static void
mmc_ms_delay(int ms)
{

 DELAY(1000 * ms);
}
