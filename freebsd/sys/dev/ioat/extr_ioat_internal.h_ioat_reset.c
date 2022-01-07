
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {int dummy; } ;


 int IOAT_CHANCMD_OFFSET ;
 int IOAT_CHANCMD_RESET ;
 int ioat_write_1 (struct ioat_softc*,int ,int ) ;

__attribute__((used)) static inline void
ioat_reset(struct ioat_softc *ioat)
{
 ioat_write_1(ioat, IOAT_CHANCMD_OFFSET, IOAT_CHANCMD_RESET);
}
