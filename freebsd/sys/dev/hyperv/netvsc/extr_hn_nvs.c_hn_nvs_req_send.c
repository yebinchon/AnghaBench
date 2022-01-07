
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_prichan; } ;


 int VMBUS_CHANPKT_FLAG_NONE ;
 int hn_nvs_send (int ,int ,void*,int,int *) ;
 int hn_nvs_sendctx_none ;

__attribute__((used)) static __inline int
hn_nvs_req_send(struct hn_softc *sc, void *req, int reqlen)
{

 return (hn_nvs_send(sc->hn_prichan, VMBUS_CHANPKT_FLAG_NONE,
     req, reqlen, &hn_nvs_sendctx_none));
}
