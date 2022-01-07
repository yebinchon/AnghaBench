
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int dummy; } ;


 int INB (struct ipmi_softc*,int ) ;
 int KCS_DATA ;
 int KCS_STATUS_OBF ;

__attribute__((used)) static void
kcs_clear_obf(struct ipmi_softc *sc, int status)
{
 int data;


 if (status & KCS_STATUS_OBF) {
  data = INB(sc, KCS_DATA);
 }
}
