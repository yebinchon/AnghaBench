
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int dev; int enh_sh; int enh_st; } ;


 int bus_space_write_1 (int ,int ,int ,int ) ;
 int device_printf (int ,char*,int ,int ,int ,int) ;
 int sv_direct_get (struct sc_info*,int ) ;

__attribute__((used)) static void
_sv_direct_set(struct sc_info *sc, u_int8_t reg, u_int8_t val, int line)
{
 u_int8_t n;
 bus_space_write_1(sc->enh_st, sc->enh_sh, reg, val);

 n = sv_direct_get(sc, reg);
 if (n != val) {
  device_printf(sc->dev, "sv_direct_set register 0x%02x %d != %d from line %d\n", reg, n, val, line);
 }
}
