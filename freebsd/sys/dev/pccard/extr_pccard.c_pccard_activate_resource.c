
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int sc; } ;
typedef int device_t ;


 struct pccard_ivar* PCCARD_IVAR (int ) ;

 int bus_generic_activate_resource (int ,int ,int,int,struct resource*) ;
 int pccard_mfc (int ) ;
 int pccard_mfc_adjust_iobase (struct pccard_function*,int ,int ,int ) ;
 int rman_get_size (struct resource*) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
pccard_activate_resource(device_t brdev, device_t child, int type, int rid,
    struct resource *r)
{
 struct pccard_ivar *ivar = PCCARD_IVAR(child);
 struct pccard_function *pf = ivar->pf;

 switch(type) {
 case 128:




  if (pccard_mfc(pf->sc))
   pccard_mfc_adjust_iobase(pf, rman_get_start(r), 0,
       rman_get_size(r));
  break;
 default:
  break;
 }
 return (bus_generic_activate_resource(brdev, child, type, rid, r));
}
