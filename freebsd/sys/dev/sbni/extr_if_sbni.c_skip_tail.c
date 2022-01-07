
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int u_int ;
struct sbni_softc {int dummy; } ;


 scalar_t__ CRC32 (int ,scalar_t__) ;
 scalar_t__ CRC32_REMAINDER ;
 int DAT ;
 int sbni_inb (struct sbni_softc*,int ) ;

__attribute__((used)) static int
skip_tail(struct sbni_softc *sc, u_int tail_len, u_int32_t crc)
{
 while (tail_len--)
  crc = CRC32(sbni_inb(sc, DAT), crc);

 return (crc == CRC32_REMAINDER);
}
