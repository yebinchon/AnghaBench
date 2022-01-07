
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct davbus_softc {int reg; } ;


 int DAVBUS_CODEC_BUSY ;
 int DAVBUS_CODEC_CTRL ;
 int DELAY (int) ;
 int KASSERT (int,char*) ;
 int SCREAMER_CODEC_EMSEL0 ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void
screamer_write_locked(struct davbus_softc *d, u_int reg, u_int val)
{
 u_int x;

 KASSERT(val == (val & 0xfff), ("bad val"));

 while (bus_read_4(d->reg, DAVBUS_CODEC_CTRL) & DAVBUS_CODEC_BUSY)
  DELAY(100);

 x = reg;
 x |= SCREAMER_CODEC_EMSEL0;
 x |= val;
 bus_write_4(d->reg, DAVBUS_CODEC_CTRL, x);

 while (bus_read_4(d->reg, DAVBUS_CODEC_CTRL) & DAVBUS_CODEC_BUSY)
  DELAY(100);
}
