
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grace_expired ;

void
sigalarm_handler(void)
{

 grace_expired = 1;
}
