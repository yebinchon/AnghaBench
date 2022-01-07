
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sbi_shutdown () ;

void
cpu_reset(void)
{

 sbi_shutdown();

 while(1);
}
