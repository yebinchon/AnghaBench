
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gmxport; } ;
struct octeon_device {int ifcount; TYPE_1__ props; } ;
struct lio_if_props {int dummy; } ;


 int LIO_GET_NUM_NIC_PORTS_CFG (int ) ;
 int bzero (TYPE_1__*,int) ;
 int lio_dev_dbg (struct octeon_device*,char*) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_get_conf (struct octeon_device*) ;
 int lio_setup_nic_devices (struct octeon_device*) ;

__attribute__((used)) static int
lio_init_nic_module(struct octeon_device *oct)
{
 int num_nic_ports = LIO_GET_NUM_NIC_PORTS_CFG(lio_get_conf(oct));
 int retval = 0;

 lio_dev_dbg(oct, "Initializing network interfaces\n");







 oct->ifcount = num_nic_ports;

 bzero(&oct->props, sizeof(struct lio_if_props));

 oct->props.gmxport = -1;

 retval = lio_setup_nic_devices(oct);
 if (retval) {
  lio_dev_err(oct, "Setup NIC devices failed\n");
  goto lio_init_failure;
 }

 lio_dev_dbg(oct, "Network interfaces ready\n");

 return (retval);

lio_init_failure:

 oct->ifcount = 0;

 return (retval);
}
