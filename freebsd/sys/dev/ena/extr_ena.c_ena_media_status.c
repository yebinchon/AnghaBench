
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int ifm_active; int ifm_status; } ;
struct ena_adapter {int global_mtx; } ;
typedef int if_t ;


 int ENA_DBG ;
 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_LINK_UP ;
 int ENA_INFO ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_UNKNOWN ;
 int ena_trace (int ,char*) ;
 struct ena_adapter* if_getsoftc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ena_media_status(if_t ifp, struct ifmediareq *ifmr)
{
 struct ena_adapter *adapter = if_getsoftc(ifp);
 ena_trace(ENA_DBG, "enter\n");

 mtx_lock(&adapter->global_mtx);

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (!ENA_FLAG_ISSET(ENA_FLAG_LINK_UP, adapter)) {
  mtx_unlock(&adapter->global_mtx);
  ena_trace(ENA_INFO, "Link is down\n");
  return;
 }

 ifmr->ifm_status |= IFM_ACTIVE;
 ifmr->ifm_active |= IFM_UNKNOWN | IFM_FDX;

 mtx_unlock(&adapter->global_mtx);
}
