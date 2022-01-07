
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct davbus_softc {int reg; } ;


 int BURGUNDY_CTRL_RESET ;
 int BURGUNDY_CTRL_WRITE ;
 int DAVBUS_CODEC_BUSY ;
 int DAVBUS_CODEC_CTRL ;
 int DELAY (int) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void
burgundy_write_locked(struct davbus_softc *d, u_int reg, u_int val)
{
 u_int size, addr, offset, data, i;

 size = (reg & 0x00FF0000) >> 16;
 addr = (reg & 0x0000FF00) >> 8;
 offset = reg & 0xFF;

 for (i = offset; i < offset + size; ++i) {
  data = BURGUNDY_CTRL_WRITE | (addr << 12) |
      ((size + offset - 1) << 10) | (i << 8) | (val & 0xFF);
  if (i == offset)
   data |= BURGUNDY_CTRL_RESET;

  bus_write_4(d->reg, DAVBUS_CODEC_CTRL, data);

  while (bus_read_4(d->reg, DAVBUS_CODEC_CTRL) &
      DAVBUS_CODEC_BUSY)
   DELAY(1);

  val >>= 8;
 }
}
