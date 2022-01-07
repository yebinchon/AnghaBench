
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int netmap_use_count ;

void
nm_os_get_module(void)
{
 netmap_use_count++;
}
