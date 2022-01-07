
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int root; int ctx; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct emu_sc_info*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int sysctl_emu_digitalswitch_control ;

__attribute__((used)) static void
emu_digitalswitch(struct emu_sc_info *sc)
{

 SYSCTL_ADD_PROC(sc->ctx,
  SYSCTL_CHILDREN(sc->root),
  OID_AUTO, "_digital",
  CTLTYPE_INT | CTLFLAG_RW, sc, 0,
  sysctl_emu_digitalswitch_control, "I", "Enable digital output");

 return;
}
