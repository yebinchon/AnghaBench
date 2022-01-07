
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int macaddr; } ;
struct jz4780_efuse_softc {TYPE_1__ data; } ;
typedef int macstr ;


 int * kern_getenv (char*) ;
 int kern_setenv (char*,char*) ;
 int snprintf (char*,int,char*,int ,char*) ;

__attribute__((used)) static void
jz4780_efuse_update_kenv(struct jz4780_efuse_softc *sc)
{
 char macstr[sizeof("xx:xx:xx:xx:xx:xx")];





 if (kern_getenv("hint.dme.0.macaddr") == ((void*)0)) {
  snprintf(macstr, sizeof(macstr), "%6D",
      sc->data.macaddr, ":");
  kern_setenv("hint.dme.0.macaddr", macstr);
 }
}
