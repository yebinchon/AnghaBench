
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_devd_socket () ;
 int devd_sock ;
 int refresh_device_tbl (int) ;

void
init_device_tbl(void)
{


 refresh_device_tbl(1);


 devd_sock = create_devd_socket();
}
