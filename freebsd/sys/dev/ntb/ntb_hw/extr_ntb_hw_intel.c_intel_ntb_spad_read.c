
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ntb_softc {unsigned int spad_count; TYPE_1__* self_reg; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ spad; } ;


 int EINVAL ;
 struct ntb_softc* device_get_softc (int ) ;
 int intel_ntb_reg_read (int,scalar_t__) ;

__attribute__((used)) static int
intel_ntb_spad_read(device_t dev, unsigned int idx, uint32_t *val)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 if (idx >= ntb->spad_count)
  return (EINVAL);

 *val = intel_ntb_reg_read(4, ntb->self_reg->spad + idx * 4);

 return (0);
}
