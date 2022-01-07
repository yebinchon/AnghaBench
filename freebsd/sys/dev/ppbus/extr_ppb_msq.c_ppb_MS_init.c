
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_xfer {struct ppb_microseq* loop; } ;
struct ppb_microseq {int dummy; } ;
struct ppb_device {int dummy; } ;
typedef int device_t ;


 scalar_t__ device_get_ivars (int ) ;
 struct ppb_xfer* mode2xfer (int ,struct ppb_device*,int) ;
 int ppb_assert_locked (int ) ;

int
ppb_MS_init(device_t bus, device_t dev, struct ppb_microseq *loop, int opcode)
{
 struct ppb_device *ppbdev = (struct ppb_device *)device_get_ivars(dev);
 struct ppb_xfer *xfer = mode2xfer(bus, ppbdev, opcode);

 ppb_assert_locked(bus);
 xfer->loop = loop;

 return (0);
}
