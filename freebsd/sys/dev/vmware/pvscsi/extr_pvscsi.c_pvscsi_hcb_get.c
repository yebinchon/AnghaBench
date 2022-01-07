
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int free_list; int lock; } ;
struct pvscsi_hcb {int dummy; } ;


 int MA_OWNED ;
 struct pvscsi_hcb* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int links ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static struct pvscsi_hcb *
pvscsi_hcb_get(struct pvscsi_softc *sc)
{
 struct pvscsi_hcb *hcb;

 mtx_assert(&sc->lock, MA_OWNED);

 hcb = SLIST_FIRST(&sc->free_list);
 if (hcb) {
  SLIST_REMOVE_HEAD(&sc->free_list, links);
 }

 return (hcb);
}
