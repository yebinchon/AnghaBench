
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int dummy; } ;
struct vtscsi_request {int vsr_callout; struct vtscsi_softc* vsr_softc; int vsr_uresp; int vsr_ureq; } ;


 int KASSERT (int,char*) ;
 int VTSCSI_MTX (struct vtscsi_softc*) ;
 int callout_init_mtx (int *,int ,int ) ;
 int sglist_count (int *,int) ;

__attribute__((used)) static void
vtscsi_init_request(struct vtscsi_softc *sc, struct vtscsi_request *req)
{
 req->vsr_softc = sc;
 callout_init_mtx(&req->vsr_callout, VTSCSI_MTX(sc), 0);
}
