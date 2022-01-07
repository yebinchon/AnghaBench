
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ntb_softc {unsigned int spad_count; TYPE_1__* peer_reg; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ spad; } ;


 int EINVAL ;
 scalar_t__ HAS_FEATURE (struct ntb_softc*,int ) ;
 int NTB_SDOORBELL_LOCKUP ;
 scalar_t__ XEON_SPAD_OFFSET ;
 struct ntb_softc* device_get_softc (int ) ;
 int intel_ntb_mw_write (int,scalar_t__,int ) ;
 int intel_ntb_reg_write (int,scalar_t__,int ) ;

__attribute__((used)) static int
intel_ntb_peer_spad_write(device_t dev, unsigned int idx, uint32_t val)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 if (idx >= ntb->spad_count)
  return (EINVAL);

 if (HAS_FEATURE(ntb, NTB_SDOORBELL_LOCKUP))
  intel_ntb_mw_write(4, XEON_SPAD_OFFSET + idx * 4, val);
 else
  intel_ntb_reg_write(4, ntb->peer_reg->spad + idx * 4, val);

 return (0);
}
