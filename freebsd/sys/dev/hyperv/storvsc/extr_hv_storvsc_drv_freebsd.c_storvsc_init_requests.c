
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct storvsc_softc {int storvsc_req_dtag; int hs_free_list; TYPE_1__* hs_drv_props; } ;
struct hv_storvsc_request {int data_dmap; struct storvsc_softc* softc; } ;
typedef int device_t ;
struct TYPE_2__ {int drv_max_ios_per_target; } ;


 int BUS_SPACE_MAXADDR ;
 struct hv_storvsc_request* LIST_FIRST (int *) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct hv_storvsc_request*,int ) ;
 int LIST_REMOVE (struct hv_storvsc_request*,int ) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int STORVSC_DATA_SEGCNT_MAX ;
 int STORVSC_DATA_SEGSZ_MAX ;
 int STORVSC_DATA_SIZE_MAX ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_get_dma_tag (int ) ;
 struct storvsc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (struct hv_storvsc_request*,int ) ;
 int link ;
 struct hv_storvsc_request* malloc (int,int ,int) ;

__attribute__((used)) static int
storvsc_init_requests(device_t dev)
{
 struct storvsc_softc *sc = device_get_softc(dev);
 struct hv_storvsc_request *reqp;
 int error, i;

 LIST_INIT(&sc->hs_free_list);

 error = bus_dma_tag_create(
  bus_get_dma_tag(dev),
  1,
  PAGE_SIZE,
  BUS_SPACE_MAXADDR,
  BUS_SPACE_MAXADDR,
  ((void*)0), ((void*)0),
  STORVSC_DATA_SIZE_MAX,
  STORVSC_DATA_SEGCNT_MAX,
  STORVSC_DATA_SEGSZ_MAX,
  0,
  ((void*)0),
  ((void*)0),
  &sc->storvsc_req_dtag);
 if (error) {
  device_printf(dev, "failed to create storvsc dma tag\n");
  return (error);
 }

 for (i = 0; i < sc->hs_drv_props->drv_max_ios_per_target; ++i) {
  reqp = malloc(sizeof(struct hv_storvsc_request),
     M_DEVBUF, M_WAITOK|M_ZERO);
  reqp->softc = sc;
  error = bus_dmamap_create(sc->storvsc_req_dtag, 0,
    &reqp->data_dmap);
  if (error) {
   device_printf(dev, "failed to allocate storvsc "
       "data dmamap\n");
   goto cleanup;
  }
  LIST_INSERT_HEAD(&sc->hs_free_list, reqp, link);
 }
 return (0);

cleanup:
 while ((reqp = LIST_FIRST(&sc->hs_free_list)) != ((void*)0)) {
  LIST_REMOVE(reqp, link);
  bus_dmamap_destroy(sc->storvsc_req_dtag, reqp->data_dmap);
  free(reqp, M_DEVBUF);
 }
 return (error);
}
