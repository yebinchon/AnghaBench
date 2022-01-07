
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ntb_softc {int db_mask; TYPE_1__* self_reg; } ;
typedef int device_t ;
struct TYPE_2__ {int db_mask; } ;


 int DB_MASK_LOCK (struct ntb_softc*) ;
 int DB_MASK_UNLOCK (struct ntb_softc*) ;
 int HAS_FEATURE (struct ntb_softc*,int ) ;
 int NTB_SB01BASE_LOCKUP ;
 int db_iowrite (struct ntb_softc*,int ,int ) ;
 struct ntb_softc* device_get_softc (int ) ;

__attribute__((used)) static void
intel_ntb_db_set_mask(device_t dev, uint64_t bits)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 DB_MASK_LOCK(ntb);
 ntb->db_mask |= bits;
 if (!HAS_FEATURE(ntb, NTB_SB01BASE_LOCKUP))
  db_iowrite(ntb, ntb->self_reg->db_mask, ntb->db_mask);
 DB_MASK_UNLOCK(ntb);
}
