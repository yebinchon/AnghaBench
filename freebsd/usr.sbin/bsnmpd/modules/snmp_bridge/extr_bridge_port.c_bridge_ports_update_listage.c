
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ports_list_age ;
 int time (int *) ;

void
bridge_ports_update_listage(void)
{
 ports_list_age = time(((void*)0));
}
