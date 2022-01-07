
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int dummy; } ;


 int KCS_STATUS_IBF ;
 int kcs_wait (struct ipmi_softc*,int ,int ) ;

__attribute__((used)) static int
kcs_wait_for_ibf(struct ipmi_softc *sc, bool level)
{

 return (kcs_wait(sc, level ? KCS_STATUS_IBF : 0, KCS_STATUS_IBF));
}
