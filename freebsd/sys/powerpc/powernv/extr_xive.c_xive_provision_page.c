
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xive_softc {int sc_prov_page_size; } ;


 int BUS_SPACE_MAXADDR ;
 int M_XIVE ;
 int OPAL_XIVE_DONATE_PAGE ;
 int OPAL_XIVE_PROVISIONING ;
 void* contigmalloc (int ,int ,int ,int ,int ,int ,int ) ;
 int opal_call (int ,int,int ) ;
 int vtophys (void*) ;

__attribute__((used)) static int
xive_provision_page(struct xive_softc *sc)
{
 void *prov_page;
 int error;

 do {
  prov_page = contigmalloc(sc->sc_prov_page_size, M_XIVE, 0,
      0, BUS_SPACE_MAXADDR,
      sc->sc_prov_page_size, sc->sc_prov_page_size);

  error = opal_call(OPAL_XIVE_DONATE_PAGE, -1,
      vtophys(prov_page));
 } while (error == OPAL_XIVE_PROVISIONING);

 return (0);
}
