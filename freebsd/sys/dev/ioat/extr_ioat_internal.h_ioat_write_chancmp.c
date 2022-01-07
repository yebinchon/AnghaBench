
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ioat_softc {scalar_t__ version; } ;


 int IOAT_CHANCMP_OFFSET_LOW ;
 scalar_t__ IOAT_VER_3_3 ;
 int ioat_write_8 (struct ioat_softc*,int ,int ) ;
 int ioat_write_double_4 (struct ioat_softc*,int ,int ) ;

__attribute__((used)) static inline void
ioat_write_chancmp(struct ioat_softc *ioat, uint64_t addr)
{

 if (ioat->version >= IOAT_VER_3_3)
  ioat_write_8(ioat, IOAT_CHANCMP_OFFSET_LOW, addr);
 else
  ioat_write_double_4(ioat, IOAT_CHANCMP_OFFSET_LOW, addr);
}
