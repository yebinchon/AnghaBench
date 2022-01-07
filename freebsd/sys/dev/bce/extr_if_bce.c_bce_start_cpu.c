
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpu_reg {int mode; int state_value_clear; int state; int mode_value_halt; } ;
struct bce_softc {int dummy; } ;


 int BCE_VERBOSE_RESET ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int REG_RD_IND (struct bce_softc*,int ) ;
 int REG_WR_IND (struct bce_softc*,int ,int ) ;

__attribute__((used)) static void
bce_start_cpu(struct bce_softc *sc, struct cpu_reg *cpu_reg)
{
 u32 val;

 DBENTER(BCE_VERBOSE_RESET);


 val = REG_RD_IND(sc, cpu_reg->mode);
 val &= ~cpu_reg->mode_value_halt;
 REG_WR_IND(sc, cpu_reg->state, cpu_reg->state_value_clear);
 REG_WR_IND(sc, cpu_reg->mode, val);

 DBEXIT(BCE_VERBOSE_RESET);
}
