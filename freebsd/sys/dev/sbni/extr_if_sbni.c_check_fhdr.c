
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct sbni_softc {int dummy; } ;


 int CRC32 (scalar_t__,int ) ;
 int DAT ;
 int FRAME_ACK_MASK ;
 int FRAME_FIRST ;
 int FRAME_LEN_MASK ;
 int SBNI_MAX_FRAME ;
 scalar_t__ SBNI_SIG ;
 scalar_t__ sbni_inb (struct sbni_softc*,int ) ;

__attribute__((used)) static int
check_fhdr(struct sbni_softc *sc, u_int *framelen, u_int *frameno,
    u_int *ack, u_int *is_first, u_int32_t *crc_p)
{
 u_int32_t crc;
 u_char value;

 crc = *crc_p;
 if (sbni_inb(sc, DAT) != SBNI_SIG)
  return (0);

 value = sbni_inb(sc, DAT);
 *framelen = (u_int)value;
 crc = CRC32(value, crc);
 value = sbni_inb(sc, DAT);
 *framelen |= ((u_int)value) << 8;
 crc = CRC32(value, crc);

 *ack = *framelen & FRAME_ACK_MASK;
 *is_first = (*framelen & FRAME_FIRST) != 0;

 if ((*framelen &= FRAME_LEN_MASK) < 6 || *framelen > SBNI_MAX_FRAME - 3)
  return (0);

 value = sbni_inb(sc, DAT);
 *frameno = (u_int)value;
 crc = CRC32(value, crc);

 crc = CRC32(sbni_inb(sc, DAT), crc);
 *framelen -= 2;

 *crc_p = crc;
 return (1);
}
