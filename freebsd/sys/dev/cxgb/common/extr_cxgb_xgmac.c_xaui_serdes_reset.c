
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cmac {scalar_t__ offset; TYPE_3__* adapter; } ;
struct TYPE_7__ {unsigned int const* xauicfg; } ;
struct TYPE_8__ {TYPE_1__ vpd; } ;
struct TYPE_9__ {TYPE_2__ params; } ;
typedef TYPE_3__ adapter_t ;


 int ARRAY_SIZE (unsigned int const*) ;
 scalar_t__ A_XGM_SERDES_CTRL0 ;
 size_t macidx (struct cmac*) ;
 int t3_read_reg (TYPE_3__*,scalar_t__) ;
 int t3_set_reg_field (TYPE_3__*,scalar_t__,unsigned int const,int ) ;
 int t3_write_reg (TYPE_3__*,scalar_t__,unsigned int const) ;
 int udelay (int) ;

__attribute__((used)) static void xaui_serdes_reset(struct cmac *mac)
{
 static const unsigned int clear[] = {
  137 | 136, 129, 133 | 132,
       135 | 134, 128, 131 | 130
 };

 int i;
 adapter_t *adap = mac->adapter;
 u32 ctrl = A_XGM_SERDES_CTRL0 + mac->offset;

 t3_write_reg(adap, ctrl, adap->params.vpd.xauicfg[macidx(mac)] |
       130 | 131 | 132 | 133 |
       134 | 135 | 136 | 137 |
       128 | 129);
 (void)t3_read_reg(adap, ctrl);
 udelay(15);

 for (i = 0; i < ARRAY_SIZE(clear); i++) {
  t3_set_reg_field(adap, ctrl, clear[i], 0);
  udelay(15);
 }
}
