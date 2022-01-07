
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {int dummy; } ;
typedef int bus_addr_t ;


 int R_DONE_FIFO ;
 int ida_inl (struct ida_softc*,int ) ;

__attribute__((used)) static bus_addr_t
ida_v3_done(struct ida_softc *ida)
{
 bus_addr_t completed;

 completed = ida_inl(ida, R_DONE_FIFO);
 if (completed == -1) {
  return (0);
 }
 return (completed);
}
