
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIO_MAX_DEVICES ;
 int MTX_DEF ;
 int bzero (int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int oct_set_config_info (int,int) ;
 int octeon_device ;
 int octeon_devices_lock ;

void
lio_init_device_list(int conf_type)
{
 int i;

 bzero(octeon_device, (sizeof(void *) * LIO_MAX_DEVICES));
 for (i = 0; i < LIO_MAX_DEVICES; i++)
  oct_set_config_info(i, conf_type);
 mtx_init(&octeon_devices_lock, "octeon_devices_lock", ((void*)0), MTX_DEF);
}
