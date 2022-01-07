
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {int device; int * reg; } ;


 int intel_ntb_link_disable (int ) ;

__attribute__((used)) static void
intel_ntb_teardown_xeon(struct ntb_softc *ntb)
{

 if (ntb->reg != ((void*)0))
  intel_ntb_link_disable(ntb->device);
}
