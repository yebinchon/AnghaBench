
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY (int) ;
 scalar_t__ ata_delayed_attach ;
 int hz ;
 int pause (char*,int) ;

void
ata_udelay(int interval)
{

    if (1 || interval < (1000000/hz) || ata_delayed_attach)
 DELAY(interval);
    else
 pause("ataslp", interval/(1000000/hz));
}
