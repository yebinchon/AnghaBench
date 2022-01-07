
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int CONTROLLER_t ;


 int * device_get_softc (int ) ;
 int rp_pcireleaseresource (int *) ;

__attribute__((used)) static int
rp_pcidetach(device_t dev)
{
 CONTROLLER_t *ctlp;

 ctlp = device_get_softc(dev);
 rp_pcireleaseresource(ctlp);

 return (0);
}
