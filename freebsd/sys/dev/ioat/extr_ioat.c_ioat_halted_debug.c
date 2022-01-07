
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ioat_hw_descriptor {int dummy; } ioat_hw_descriptor ;
typedef scalar_t__ uint32_t ;
struct ioat_softc {scalar_t__ tail; int cleanup_lock; } ;


 int IOAT_CHANERR_STR ;
 int MA_OWNED ;
 int dump_descriptor (union ioat_hw_descriptor*) ;
 union ioat_hw_descriptor* ioat_get_descriptor (struct ioat_softc*,scalar_t__) ;
 int ioat_log_message (int ,char*,int,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
ioat_halted_debug(struct ioat_softc *ioat, uint32_t chanerr)
{
 union ioat_hw_descriptor *desc;

 ioat_log_message(0, "Channel halted (%b)\n", (int)chanerr,
     IOAT_CHANERR_STR);
 if (chanerr == 0)
  return;

 mtx_assert(&ioat->cleanup_lock, MA_OWNED);

 desc = ioat_get_descriptor(ioat, ioat->tail + 0);
 dump_descriptor(desc);

 desc = ioat_get_descriptor(ioat, ioat->tail + 1);
 dump_descriptor(desc);
}
