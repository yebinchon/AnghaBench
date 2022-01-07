
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifp; } ;
struct octeon_device {TYPE_1__ props; } ;
struct lio {int dummy; } ;
typedef int device_t ;


 struct octeon_device* device_get_softc (int ) ;
 struct lio* if_getsoftc (int ) ;
 int lio_send_rx_ctrl_cmd (struct lio*,int ) ;

__attribute__((used)) static int
lio_shutdown(device_t dev)
{
 struct octeon_device *oct_dev = device_get_softc(dev);
 struct lio *lio = if_getsoftc(oct_dev->props.ifp);

 lio_send_rx_ctrl_cmd(lio, 0);

 return (0);
}
