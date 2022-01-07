
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {int dummy; } ;
typedef int bus_addr_t ;


 int R_42XX_REPLY ;
 int ida_inl (struct ida_softc*,int ) ;
 int ida_outl (struct ida_softc*,int ,int ) ;

__attribute__((used)) static bus_addr_t
ida_v4_done(struct ida_softc *ida)
{
 bus_addr_t completed;

 completed = ida_inl(ida, R_42XX_REPLY);
 if (completed == -1)
  return (0);
 ida_outl(ida, R_42XX_REPLY, 0);
 return (completed);
}
