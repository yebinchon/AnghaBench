
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_req_free; } ;
struct vtblk_request {int dummy; } ;


 int TAILQ_INSERT_HEAD (int *,struct vtblk_request*,int ) ;
 int vbr_link ;

__attribute__((used)) static void
vtblk_request_enqueue(struct vtblk_softc *sc, struct vtblk_request *req)
{

 TAILQ_INSERT_HEAD(&sc->vtblk_req_free, req, vbr_link);
}
