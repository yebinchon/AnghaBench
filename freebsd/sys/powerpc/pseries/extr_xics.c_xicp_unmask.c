
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xicp_softc {int ibm_int_on; } ;
struct xicp_intvec {int cpu; } ;
typedef int device_t ;
typedef int cell_t ;


 int KASSERT (int ,char*) ;
 int MAX_XICP_IRQS ;
 int OPAL_SET_XIVE ;
 int XICP_PRIORITY ;
 struct xicp_softc* device_get_softc (int ) ;
 int opal_call (int ,int ,int,int ) ;
 int rtas_call_method (int ,int,int,int ,int *) ;
 scalar_t__ rtas_exists () ;

__attribute__((used)) static void
xicp_unmask(device_t dev, u_int irq, void *priv)
{
 struct xicp_softc *sc = device_get_softc(dev);
 cell_t status;

 if (irq == MAX_XICP_IRQS)
  return;

 if (rtas_exists()) {
  rtas_call_method(sc->ibm_int_on, 1, 1, irq, &status);







 }
}
