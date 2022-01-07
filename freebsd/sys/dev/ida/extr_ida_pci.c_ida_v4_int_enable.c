
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {int flags; } ;


 int IDA_INTERRUPTS ;
 int INT_DISABLE_42XX ;
 int INT_ENABLE_42XX ;
 int R_42XX_INT_MASK ;
 int ida_outl (struct ida_softc*,int ,int ) ;

__attribute__((used)) static void
ida_v4_int_enable(struct ida_softc *ida, int enable)
{
 if (enable)
  ida->flags |= IDA_INTERRUPTS;
 else
  ida->flags &= ~IDA_INTERRUPTS;
 ida_outl(ida, R_42XX_INT_MASK,
     enable ? INT_ENABLE_42XX : INT_DISABLE_42XX);
}
