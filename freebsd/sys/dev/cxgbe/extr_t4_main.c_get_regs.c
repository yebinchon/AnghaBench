
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct t4_regdump {int version; int len; } ;
struct adapter {int dummy; } ;


 int chip_id (struct adapter*) ;
 int chip_rev (struct adapter*) ;
 int t4_get_regs (struct adapter*,int *,int ) ;

__attribute__((used)) static void
get_regs(struct adapter *sc, struct t4_regdump *regs, uint8_t *buf)
{

 regs->version = chip_id(sc) | chip_rev(sc) << 10;
 t4_get_regs(sc, buf, regs->len);
}
