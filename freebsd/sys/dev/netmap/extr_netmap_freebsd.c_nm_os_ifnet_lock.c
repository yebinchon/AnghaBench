
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFNET_RLOCK () ;

void
nm_os_ifnet_lock(void)
{
 IFNET_RLOCK();
}
