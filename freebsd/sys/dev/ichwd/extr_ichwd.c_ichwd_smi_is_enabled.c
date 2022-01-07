
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ichwd_softc {int dummy; } ;


 int SMI_EN ;
 int SMI_TCO_EN ;
 int ichwd_read_smi_4 (struct ichwd_softc*,int ) ;

__attribute__((used)) static __inline int
ichwd_smi_is_enabled(struct ichwd_softc *sc)
{
 return ((ichwd_read_smi_4(sc, SMI_EN) & SMI_TCO_EN) != 0);
}
