
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storvsc_softc {int hs_free_list; } ;
struct hv_storvsc_request {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct hv_storvsc_request*,int ) ;
 int link ;

__attribute__((used)) static void
storvsc_free_request(struct storvsc_softc *sc, struct hv_storvsc_request *reqp)
{

 LIST_INSERT_HEAD(&sc->hs_free_list, reqp, link);
}
