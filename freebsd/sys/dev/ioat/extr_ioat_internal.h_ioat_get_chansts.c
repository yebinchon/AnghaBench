
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ioat_softc {scalar_t__ version; } ;


 int IOAT_CHANSTS_OFFSET ;
 scalar_t__ IOAT_VER_3_3 ;
 int ioat_read_8 (struct ioat_softc*,int ) ;
 int ioat_read_double_4 (struct ioat_softc*,int ) ;

__attribute__((used)) static inline uint64_t
ioat_get_chansts(struct ioat_softc *ioat)
{
 uint64_t status;

 if (ioat->version >= IOAT_VER_3_3)
  status = ioat_read_8(ioat, IOAT_CHANSTS_OFFSET);
 else

  status = ioat_read_double_4(ioat, IOAT_CHANSTS_OFFSET);
 return (status);
}
