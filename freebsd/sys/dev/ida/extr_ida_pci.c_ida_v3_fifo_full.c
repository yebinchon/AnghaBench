
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {int dummy; } ;


 int R_CMD_FIFO ;
 scalar_t__ ida_inl (struct ida_softc*,int ) ;

__attribute__((used)) static int
ida_v3_fifo_full(struct ida_softc *ida)
{
 return (ida_inl(ida, R_CMD_FIFO) == 0);
}
