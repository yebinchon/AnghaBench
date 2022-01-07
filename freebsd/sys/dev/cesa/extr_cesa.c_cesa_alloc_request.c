
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_softc {int dummy; } ;
struct cesa_request {int cr_sdesc; int cr_tdesc; } ;


 int CESA_GENERIC_ALLOC_LOCKED (struct cesa_softc*,struct cesa_request*,int ) ;
 int STAILQ_INIT (int *) ;
 int requests ;

__attribute__((used)) static struct cesa_request *
cesa_alloc_request(struct cesa_softc *sc)
{
 struct cesa_request *cr;

 CESA_GENERIC_ALLOC_LOCKED(sc, cr, requests);
 if (!cr)
  return (((void*)0));

 STAILQ_INIT(&cr->cr_tdesc);
 STAILQ_INIT(&cr->cr_sdesc);

 return (cr);
}
