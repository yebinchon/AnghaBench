
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addr_wq ;
 int hz ;
 int jiffies ;
 int mod_delayed_work (int ,int *,int) ;
 int work ;

__attribute__((used)) static void set_timeout(int time)
{
 int delay;

 delay = time - jiffies;
 if (delay <= 0)
  delay = 1;
 else if (delay > hz)
  delay = hz;

 mod_delayed_work(addr_wq, &work, delay);
}
