
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 uintptr_t DEFAULT_RCLK ;
 int PUC_IVAR_CLOCK ;
 int device_get_parent (int ) ;
 int sioattach (int ,int ,uintptr_t) ;

__attribute__((used)) static int
sio_puc_attach(device_t dev)
{
 uintptr_t rclk;

 if (BUS_READ_IVAR(device_get_parent(dev), dev, PUC_IVAR_CLOCK,
     &rclk) != 0)
  rclk = DEFAULT_RCLK;
 return (sioattach(dev, 0, rclk));
}
