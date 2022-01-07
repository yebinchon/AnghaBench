
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ntb_softc {TYPE_1__* self_reg; int fake_db; } ;
typedef int device_t ;
struct TYPE_2__ {int db_bell; } ;


 scalar_t__ HAS_FEATURE (struct ntb_softc*,int ) ;
 int NTB_SB01BASE_LOCKUP ;
 int db_ioread (struct ntb_softc*,int ) ;
 struct ntb_softc* device_get_softc (int ) ;

__attribute__((used)) static uint64_t
intel_ntb_db_read(device_t dev)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 if (HAS_FEATURE(ntb, NTB_SB01BASE_LOCKUP))
  return (ntb->fake_db);

 return (db_ioread(ntb, ntb->self_reg->db_bell));
}
