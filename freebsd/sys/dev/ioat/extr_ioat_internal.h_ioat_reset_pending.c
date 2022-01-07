
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ioat_softc {int dummy; } ;
typedef int boolean_t ;


 int IOAT_CHANCMD_OFFSET ;
 int IOAT_CHANCMD_RESET ;
 int ioat_read_1 (struct ioat_softc*,int ) ;

__attribute__((used)) static inline boolean_t
ioat_reset_pending(struct ioat_softc *ioat)
{
 uint8_t cmd;

 cmd = ioat_read_1(ioat, IOAT_CHANCMD_OFFSET);
 return ((cmd & IOAT_CHANCMD_RESET) != 0);
}
